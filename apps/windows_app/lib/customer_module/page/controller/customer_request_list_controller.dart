import 'package:common_components/common_components.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/customer_module/domain/entities/customer_request_domain.dart';
import 'package:windows_app/customer_module/domain/repository/customer_repository.dart';

part 'customer_request_list_controller.g.dart';

@riverpod
class CustomerRequestListController extends _$CustomerRequestListController {
  List<CustomerRequestDomain>? _customerRequestList;

  @override
  FutureOr<List<CustomerRequestDomain>?> build() async {
    final repository = ref.watch(CustomerRequestListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getCustomerRequestList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    _customerRequestList = state.value;
    sortCustomerRequestByDate();
    return state.value;
  }

  void sortCustomerRequestByDate() {
    if (_customerRequestList == null) return;

    _customerRequestList?.sort((a, b) {
      final dateA = DateTime.tryParse(a.createTime ?? '');
      final dateB = DateTime.tryParse(b.createTime ?? '');

      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;

      return dateB.compareTo(dateA);
    });
  }

  void searchCustomerRequest(String query) {
    if (_customerRequestList == null) {
      return;
    }

    final filteredList =
        _customerRequestList?.where((customerRequest) {
          final customerRequestId = getIdFromName(name: customerRequest.name);
          final customerName =
              customerRequest.fields?.companyName?.stringValue ?? '';
          return (customerName.toLowerCase().contains(query.toLowerCase()) ||
              customerRequestId.toLowerCase().contains(query.toLowerCase()));
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }

  void resetSearch() {
    if (_customerRequestList == null) {
      return;
    }

    state = AsyncData(_customerRequestList);
  }

  String getCustomerName({required String id}) {
    if (state is! AsyncData) {
      return 'Memuat...';
    }

    final customerList = _customerRequestList ?? [];

    for (var customer in customerList) {
      final customerId = getIdFromName(name: customer.name);

      if (customerId == id) {
        return customer.fields?.companyName?.stringValue ?? '-';
      }
    }

    return 'Nama Tidak Ditemukan';
  }
}
