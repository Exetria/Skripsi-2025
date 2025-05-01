import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:android_app/customer_module/domain/repository/customer_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'customer_list_controller.g.dart';

@riverpod
class CustomerListController extends _$CustomerListController {
  @override
  FutureOr<List<CustomerDomain>?> build() async {
    print('asds controler built');
    final repository = ref.watch(CustomerListRepositoryProvider);
    state = const AsyncLoading();
    print('asds controler built2');
    final result = await repository.getCustomerList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    print('asds controler built3: ${state.value}');
    return state.value;
  }
}
