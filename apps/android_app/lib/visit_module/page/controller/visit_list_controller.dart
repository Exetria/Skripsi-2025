import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/domain/repository/visit_repository.dart';
import 'package:common_components/utils/api_exception.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'visit_list_controller.g.dart';

@Riverpod(keepAlive: true)
class VisitListController extends _$VisitListController {
  @override
  AsyncValue<Map<String, Either<ApiException, VisitDomain?>>> build() {
    return const AsyncData({});
  }

  Future<void> fetchVisitsForDate({
    required DateTime date,
    bool forceFetch = false,
  }) async {
    // Save previous datas
    final previousMap = Map<String, Either<ApiException, VisitDomain?>>.from(
      state.value ?? {},
    );

    // If data exist cancel API call
    if (previousMap[_generateVisitIdFromDate(date)] != null && !forceFetch) {
      state = AsyncData(previousMap);
      return;
    }

    // Call API
    final repository = ref.watch(getVisitListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getVisitList(date: date);

    // Add result to map
    previousMap[_generateVisitIdFromDate(date)] = result;

    // Reassign data
    state = AsyncData(previousMap);
  }

  Future<void> fetchAllVisitInMonth({required DateTime month}) async {
    // Save previous datas
    final previousMap = Map<String, Either<ApiException, VisitDomain?>>.from(
      state.value ?? {},
    );

    state = const AsyncLoading();

    for (int i = 1; i <= 31; i++) {
      DateTime date = DateTime(month.year, month.month, i);

      // If data exist cancel API call
      if (previousMap[_generateVisitIdFromDate(date)] != null) {
        continue;
      }

      // Call API
      final repository = ref.watch(getVisitListRepositoryProvider);
      final result = await repository.getVisitList(date: date);

      // Add result to map
      previousMap[_generateVisitIdFromDate(date)] = result;
    }

    state = AsyncData(previousMap);
  }

  Future<List<VisitDomain>> getMonthlyVisitList({
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
      await fetchVisitsForDate(date: date);

      final visitData = state.value?[_generateVisitIdFromDate(date)];

      if (visitData != null && visitData.isRight()) {
        final visitDomain = visitData.getOrElse((error) => null);

        if (visitDomain != null) {
          monthlyVisits.add(visitDomain);
        }
      }
    }

    return monthlyVisits;
  }

  String _generateVisitIdFromDate(DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';
    return formattedDate;
  }
}
