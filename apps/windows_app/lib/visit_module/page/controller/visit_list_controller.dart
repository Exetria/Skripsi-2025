import 'package:common_components/utils/api_exception.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
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
    String dateString = _generateVisitIdFromDate(date);

    // Save previous datas
    final previousMap = Map<String, Either<ApiException, VisitDomain?>>.from(
      state.value ?? {},
    );

    for (var salesId in salesIdList) {
      // If data exist cancel API call
      if (previousMap['$salesId-$dateString'] != null && !forceFetch) {
        state = AsyncData(previousMap);
        return;
      }

      // Call API
      final repository = ref.watch(getVisitListRepositoryProvider);
      state = const AsyncLoading();
      final result = await repository.getSalesVisitList(
        salesId: salesId,
        date: date,
      );

      // Add result to map
      previousMap['$salesId-$dateString'] = result;
    }

    // Reassign data
    state = AsyncData(previousMap);
  }

  Future<void> fetchSalesVisitsForDate({
    required String salesId,
    required DateTime date,
    bool forceFetch = false,
  }) async {
    String dateString = _generateVisitIdFromDate(date);

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
    final repository = ref.watch(getVisitListRepositoryProvider);
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

  String _generateVisitIdFromDate(DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';
    return formattedDate;
  }
}
