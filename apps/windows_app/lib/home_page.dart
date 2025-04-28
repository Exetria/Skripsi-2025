import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/customer_module/pages/customerListFragment.dart';
import 'package:windows_app/order_module/pages/orderListFragment.dart';
import 'package:windows_app/product_module/pages/productListFragment.dart';
import 'package:windows_app/report_module/pages/mainReportFragment.dart';
import 'package:windows_app/sales_module/page/salesListFragment.dart';
import 'package:windows_app/user_management_module/page/profileFragment.dart';

final selectedIndexProvider = StateProvider<int>((ref) => 0);

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePage();
}

class _HomePage extends ConsumerState<HomePage> {
  final List<Widget> pages = [
    const MainReportFragment(),
    const SalesListFragment(),
    const CustomerListFragment(),
    const ProductListFragment(),
    const OrderListFragment(),
    const ProfileFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    return Scaffold(
      body: Row(
        children: [
          // SIDE NAVBAR
          Container(
            constraints: const BoxConstraints(maxWidth: 100),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: dividerColor, width: 0.7),
              ),
            ),
            child: NavigationRail(
              selectedIndex: selectedIndex,
              onDestinationSelected:
                  (index) =>
                      ref.read(selectedIndexProvider.notifier).state = index,
              labelType: NavigationRailLabelType.all,
              leading: Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Center(
                  child: Image.asset('assets/logo.png', height: 40),
                ),
              ),
              destinations: [
                const NavigationRailDestination(
                  icon: Icon(Icons.dashboard),
                  label: Text('Home'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.people),
                  label: Text('Sales'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.business),
                  label: Text('Customer'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.inventory_2),
                  label: Text('Product'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.receipt_long),
                  label: Text('Order'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text('Profile'),
                ),
              ],
            ),
          ),

          // CONTENT
          Expanded(child: pages[selectedIndex]),
        ],
      ),
    );
  }
}
