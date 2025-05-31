import 'package:common_components/utils/api_exception.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/domain/repository/visit_repository.dart';

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

  String _generateVisitIdFromDate(DateTime date) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';
    return formattedDate;
  }
}
