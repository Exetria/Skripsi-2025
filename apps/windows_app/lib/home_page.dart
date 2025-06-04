import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/customer_module/page/customer_list_fragment.dart';
import 'package:windows_app/order_module/page/order_list_fragment.dart';
import 'package:windows_app/product_module/page/product_list_fragment.dart';
import 'package:windows_app/report_module/page/main_report_fragment.dart';
import 'package:windows_app/user_management_module/page/login_page.dart';
import 'package:windows_app/user_management_module/page/profile_fragment.dart';
import 'package:windows_app/user_module/page/user_list_fragment.dart';
import 'package:windows_app/visit_module/page/visit_list_fragment.dart';

final selectedIndexProvider = StateProvider<int>((ref) => 0);

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePage();
}

class _HomePage extends ConsumerState<HomePage> {
  final List<Widget> pages = [
    const MainReportFragment(),
    const UserListFragment(),
    const VisitListFragment(),
    const OrderListFragment(),
    const CustomerListFragment(),
    const ProductListFragment(),
    const ProfileFragment(),
  ];

  @override
  void initState() {
    super.initState();

    // Check if the user's logged in
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (userDataHelper == null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder:
                (_) => LoginPage(kicked: true, reason: 'User Not Signed In'),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = ref.watch(selectedIndexProvider);

    return Scaffold(
      body: Row(
        children: [
          // SIDE NAVBAR
          Container(
            constraints: const BoxConstraints(maxWidth: 105),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: dividerColor, width: 0.5),
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
                  label: Text('Beranda'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.people),
                  label: Text('Pengguna'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.directions_walk),
                  label: Text('Kunjungan'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.shopping_cart),
                  label: Text('Pesanan'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.store),
                  label: Text('Pelanggan'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.widgets),
                  label: Text('Produk'),
                ),
                const NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text('Profil'),
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
