import 'package:android_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:android_app/customer_module/domain/repository/customer_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customer_request_list_controller.g.dart';

@riverpod
class CustomerRequestListController extends _$CustomerRequestListController {
  @override
  FutureOr<List<CustomerRequestDomain>?> build() async {
    final repository = ref.watch(CustomerRequestListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getCustomerRequestList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    return state.value;
  }
}
