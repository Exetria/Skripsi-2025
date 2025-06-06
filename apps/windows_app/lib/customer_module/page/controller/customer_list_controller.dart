import 'package:common_components/common_components.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/customer_module/domain/entities/customer_domain.dart';
import 'package:windows_app/customer_module/domain/repository/customer_repository.dart';

part 'customer_list_controller.g.dart';

@Riverpod(keepAlive: true)
class CustomerListController extends _$CustomerListController {
  List<CustomerDomain>? _customerList;

  @override
  FutureOr<List<CustomerDomain>?> build() async {
    final repository = ref.watch(CustomerListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getCustomerList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    _customerList = state.value;
    sortOrderByDate();
    return state.value;
  }

  void sortOrderByDate() {
    if (_customerList == null) return;

    _customerList?.sort((a, b) {
      final dateA = DateTime.tryParse(a.createTime ?? '');
      final dateB = DateTime.tryParse(b.createTime ?? '');

      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;

      return dateB.compareTo(dateA);
    });
  }

  void searchCustomer(String query) {
    if (_customerList == null) {
      return;
    }

    final filteredList =
        _customerList?.where((customer) {
          final customerName = customer.fields?.companyName?.stringValue ?? '';
          return customerName.toLowerCase().contains(query.toLowerCase());
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }

  void resetSearch() {
    if (_customerList == null) {
      return;
    }

    state = AsyncData(_customerList);
  }

  String getCustomerName({required String id}) {
    if (state is! AsyncData) {
      return 'Memuat...';
    }

    final customerList = _customerList ?? [];

    for (var customer in customerList) {
      final customerId = getIdFromName(name: customer.name);

      if (customerId == id) {
        return customer.fields?.companyName?.stringValue ?? '-';
      }
    }

    return 'Nama Tidak Ditemukan';
  }

  Future<Position?> getCustomerLocation({required String id}) async {
    while (state is! AsyncData) {
      await Future.delayed(const Duration(milliseconds: 100));
    }

    final customerList = _customerList ?? [];

    for (var customer in customerList) {
      final customerId = getIdFromName(name: customer.name);

      if (customerId == id) {
        double? latitude =
            customer
                .fields
                ?.companyLocation
                ?.mapValue
                ?.fields
                ?.latitude
                ?.doubleValue;

        double? longitude =
            customer
                .fields
                ?.companyLocation
                ?.mapValue
                ?.fields
                ?.longitude
                ?.doubleValue;

        double? accuracy =
            customer
                .fields
                ?.companyLocation
                ?.mapValue
                ?.fields
                ?.accuracy
                ?.doubleValue;

        if (longitude != null && latitude != null && accuracy != null) {
          return Position(
            latitude: latitude,
            longitude: longitude,
            accuracy: accuracy,
            altitudeAccuracy: 0,
            headingAccuracy: 0,
            speedAccuracy: 0,
            altitude: 0.0,
            speed: 0.0,
            heading: 0.0,
            timestamp: DateTime.now(),
          );
        } else {
          return null;
        }
      }
    }

    return null;
  }
}
