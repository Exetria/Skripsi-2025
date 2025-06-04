import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/domain/repository/visit_repository.dart';

part 'filtered_visit_controller.g.dart';

@Riverpod(keepAlive: true)
class FilteredVisitController extends _$FilteredVisitController {
  List<VisitDomain>? _filteredVisitList;

  @override
  FutureOr<List<VisitDomain>?> build(DateTime startDate) async {
    final repository = ref.watch(visitListRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.getFilteredVisitList(
      startDate: DateTime(
        DateTime.now().year,
        DateTime.now().month - 3,
        DateTime.now().day,
      ),
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    _filteredVisitList = state.value;

    return state.value;
  }

  int calculateSalesForce() {
    if (state is AsyncLoading ||
        state is AsyncError ||
        _filteredVisitList == null) {
      return 0;
    }

    double visitCount = 0;
    double hoursPerVisit = 1.5;
    double hoursPerSalesperson = 8 * 66;

    for (var visit in _filteredVisitList!) {
      final visitInTheDay = visit.fields?.visits?.arrayValue?.values ?? [];

      visitCount += visitInTheDay.length;
    }

    final totalHours = visitCount * hoursPerVisit;

    final salesForceCount = totalHours / hoursPerSalesperson;

    return salesForceCount.ceil();
  }
}
