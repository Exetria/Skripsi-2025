import 'dart:io';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';
import 'package:windows_app/visit_module/domain/repository/visit_repository.dart';

part 'update_visit_controller.g.dart';

@riverpod
class UpdateVisitController extends _$UpdateVisitController {
  @override
  AsyncValue<VisitDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<VisitDomain?>> updateVisitData({
    required String salesId,
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  }) async {
    final repository = ref.watch(updateVisitRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.updateSalesVisit(
      salesId: salesId,
      date: date,
      visitDataList: visitDataList,
      updateLocationIndex: updateLocationIndex,
      visitPhoto: visitPhoto,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}
