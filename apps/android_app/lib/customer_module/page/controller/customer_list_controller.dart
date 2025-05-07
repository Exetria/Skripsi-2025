import 'package:android_app/customer_module/domain/entities/customer_domain.dart';
import 'package:android_app/customer_module/domain/repository/customer_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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

  String getCustomerName({required String id}) {
    if (state is! AsyncData) {
      return 'Loading...';
    }

    final customerList = state.value ?? [];

    for (var customer in customerList) {
      final customerId = customer.name?.substring(61) ?? '';

      if (customerId == id) {
        return customer.fields?.companyName?.stringValue ?? '-';
      }
    }

    return 'Name Not Found';
  }
}
