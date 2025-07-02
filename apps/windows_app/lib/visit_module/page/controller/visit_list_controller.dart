import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/customer_module/page/controller/customer_list_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/domain/repository/visit_repository.dart';

part 'visit_list_controller.g.dart';

@Riverpod(keepAlive: true)
class VisitListController extends _$VisitListController {
  @override
  AsyncValue<Map<String, Either<ApiException, VisitDomain?>>> build() {
    return const AsyncData({});
  }

  Future<void> fetchAllSalesVisitsForDate({
    required DateTime date,
    bool forceFetch = false,
  }) async {
    List<String> salesIdList =
        await ref.read(userListControllerProvider.notifier).getAllSalesId();
    String dateString = _generateFormattedDate(date);

    // Save previous datas
    final previousMap = Map<String, Either<ApiException, VisitDomain?>>.from(
      state.value ?? {},
    );

    // set state to loading
    state = const AsyncLoading();

    // call api
    List<Future<void>> visitDataApiCalls = [];
    for (var salesId in salesIdList) {
      // If data exist cancel API call
      if (previousMap['$salesId-$dateString'] != null && !forceFetch) {
        continue;
      }

      // Call API
      visitDataApiCalls.add(() async {
        final repository = ref.watch(visitListRepositoryProvider);
        state = const AsyncLoading();
        final result = await repository.getSalesVisitList(
          salesId: salesId,
          date: date,
        );

        // Add result to map
        previousMap['$salesId-$dateString'] = result;
      }());
    }

    await Future.wait(visitDataApiCalls);

    // Reassign data
    state = AsyncData(previousMap);
  }

  Future<void> fetchSalesVisitsForDate({
    required String salesId,
    required DateTime date,
    bool forceFetch = false,
  }) async {
    String dateString = _generateFormattedDate(date);

    // Save previous datas
    final previousMap = Map<String, Either<ApiException, VisitDomain?>>.from(
      state.value ?? {},
    );

    // If data exist cancel API call
    if (previousMap['$salesId-$dateString'] != null && !forceFetch) {
      state = AsyncData(previousMap);
      return;
    }

    // Call API
    final repository = ref.watch(visitListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getSalesVisitList(
      salesId: salesId,
      date: date,
    );

    // Add result to map
    previousMap['$salesId-$dateString'] = result;

    // Reassign data
    state = AsyncData(previousMap);
  }

  Future<String> exportVisitData(DateTimeRange dateRange) async {
    if (state.isLoading) {
      return 'Sedang memuat data, silahkan tunggu dan coba lagi';
    } else if (state.hasError) {
      return 'Terjadi kesalahan saat memuat data: ${state.error}';
    } else if (ref.read(userListControllerProvider).isLoading) {
      return 'Sedang memuat data pengguna, silahkan tunggu dan coba lagi';
    } else if (ref.read(customerListControllerProvider).isLoading) {
      return 'Sedang memuat data pelanggan, silahkan tunggu dan coba lagi';
    } else if (dateRange.start.isAfter(dateRange.end)) {
      return 'Tanggal awal tidak boleh setelah tanggal akhir';
    }

    List<String> salesIdList =
        await ref.read(userListControllerProvider.notifier).getAllSalesId();

    Map<String, List<List<dynamic>>> exportData = {};

    // Loop for all dates in the range
    for (DateTime date in dateRange.toDateTimeList()) {
      // Fetch all data in a date (won't fetch if already fetched)
      await fetchAllSalesVisitsForDate(date: date);

      // Get current date visit data
      final currentDateVisits = state.value ?? {};

      // If visit in this date is empty, skip
      if (currentDateVisits.isEmpty) {
        exportData[_generateFormattedDate(date)] = [];
        continue;
      }

      // Insert header to sheetData
      // First List is header, second and so on is data
      List<List<dynamic>> sheetData = [
        ['Sales', 'Customer', 'Status', 'Catatan', 'Link Foto', 'Link Maps'],
      ];

      // Loop for all salesId
      for (String salesId in salesIdList) {
        String dataId = '$salesId-${_generateFormattedDate(date)}';

        // get sales' visits data (in Either<ApiException, VisitDomain?>)
        final visitList = currentDateVisits[dataId];

        if (visitList == null || visitList.isLeft()) {
          continue;
        }

        // get sales' visits data (in VisitDomain)
        final VisitDomain? salesVisitData = visitList.getOrElse(
          (error) => null,
        );

        if (salesVisitData == null) {
          continue;
        }

        // get sales' visits data (in List<Value>)
        List<Value> visits = List<Value>.from(
          salesVisitData.fields?.visits?.arrayValue?.values ?? [],
        );

        // Loop for each visit in visit list and add to exportData
        for (Value visit in visits) {
          // Get visit data
          String salesName = ref
              .read(userListControllerProvider.notifier)
              .getUserName(id: salesId);
          String customerName = ref
              .read(customerListControllerProvider.notifier)
              .getCustomerName(
                id: visit.mapValue?.fields?.customerId?.stringValue ?? '',
              );
          String statusNumber =
              visit.mapValue?.fields?.visitStatus?.integerValue ?? '';
          String status =
              statusNumber == '1'
                  ? 'Direncanakan'
                  : statusNumber == '2'
                  ? 'Selesai'
                  : statusNumber == '3'
                  ? 'Dibatalkan'
                  : 'Tidak Diketahui';
          String notes = visit.mapValue?.fields?.visitNotes?.stringValue ?? '';
          String photoUrl =
              visit.mapValue?.fields?.visitPhotoUrl?.stringValue ?? '-';
          double latitude =
              visit
                  .mapValue
                  ?.fields
                  ?.location
                  ?.mapValue
                  ?.fields
                  ?.latitude
                  ?.doubleValue ??
              0;
          double longitude =
              visit
                  .mapValue
                  ?.fields
                  ?.location
                  ?.mapValue
                  ?.fields
                  ?.longitude
                  ?.doubleValue ??
              0;
          String mapsLink = generateGoogleMapsUri(
            latitude: latitude,
            longitude: longitude,
          );

          // Add to sheetData
          List<dynamic> rowData = [
            salesName,
            customerName,
            status,
            notes,
            photoUrl,
            mapsLink,
          ];
          sheetData.add(rowData);
        }
      }

      // Add to exportData
      exportData[DateFormat.yMMMMd().format(date)] = sheetData;
    }

    // Generate file
    try {
      String fileName =
          'Visit - ${dateRange.start.year}-${dateRange.start.month}-${dateRange.start.day}_${dateRange.end.year}-${dateRange.end.month}-${dateRange.end.day}';

      // Generate Excel file
      await generateExcelFile(sheetsData: exportData, fileName: fileName);

      return 'File berhasil diekspor dalam folder Downloads: $fileName.xlsx';
    } catch (e) {
      return 'Terjadi kesalahan saat mengekspor file: $e';
    }
  }

  Future<List<int>> getMonthlyVisitCount(DateTime month) async {
    // Not needed since waiting is done in the caller
    // while (state is! AsyncData) {
    //   await Future.delayed(const Duration(milliseconds: 100));
    // }
    List<String> salesIdList =
        await ref.read(userListControllerProvider.notifier).getAllSalesId();

    final targetMonth = DateTime(month.year, month.month);

    final monthlyCounts = List<int>.filled(31, 0);

    // Count visits everyday in targeted month
    for (int day = 1; day <= 31; day++) {
      final date = DateTime(targetMonth.year, targetMonth.month, day);

      // Fetch all sales visits for the date
      await fetchAllSalesVisitsForDate(date: date);

      // Get the finished visit count
      int visitCount = 0;
      for (String salesId in salesIdList) {
        final visitData =
            state.value?['$salesId-${_generateFormattedDate(date)}'];
        if (visitData != null && visitData.isRight()) {
          final visitDomain = visitData.getOrElse((error) => null);

          // get visit list
          List<Value>? visitList =
              visitDomain?.fields?.visits?.arrayValue?.values;

          // count the visits with status '2' (finished)
          if (visitList != null) {
            for (var value in visitList) {
              if (value.mapValue?.fields?.visitStatus?.integerValue == '2') {
                visitCount++;
              }
            }
          }
        }
      }

      // Store the count for the day
      monthlyCounts[day - 1] = visitCount;
    }

    return monthlyCounts;
  }

  Future<List<VisitDomain>> getSalesMonthlyVisitList({
    required String salesId,
    required DateTime month,
  }) async {
    // Not needed since waiting is done in the caller
    // while (state is! AsyncData) {
    //   await Future.delayed(const Duration(milliseconds: 100));
    // }
    final targetMonth = DateTime(month.year, month.month);

    final List<VisitDomain> monthlyVisits = [];

    for (int day = 1; day <= 31; day++) {
      final date = DateTime(targetMonth.year, targetMonth.month, day);
      await fetchSalesVisitsForDate(salesId: salesId, date: date);

      final visitData =
          state.value?['$salesId-${_generateFormattedDate(date)}'];

      if (visitData != null && visitData.isRight()) {
        final visitDomain = visitData.getOrElse((error) => null);

        if (visitDomain != null) {
          monthlyVisits.add(visitDomain);
        }
      }
    }

    return monthlyVisits;
  }

  String _generateFormattedDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';
  }
}
