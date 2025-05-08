import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:android_app/visit_module/domain/repository/visit_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_visit_controller.g.dart';

@riverpod
class UpdateVisitController extends _$UpdateVisitController {
  @override
  AsyncValue<VisitDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<VisitDomain?>> createVisit({
    required DateTime date,
    required String customerId,
    required List<Value> previousVisitData,
  }) async {
    final repository = ref.watch(updateVisitRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.createVisit(
      date: date,
      customerId: customerId,
      previousVisitData: previousVisitData,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
