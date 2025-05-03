import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/repository/customer_repository.dart';

part 'customer_list_controller.g.dart';

@Riverpod(keepAlive: true)
class CustomerListController extends _$CustomerListController {
  @override
  FutureOr<List<CustomerDomain>?> build() async {
    final repository = ref.watch(CustomerListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getCustomerList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    return state.value;
  }
}
