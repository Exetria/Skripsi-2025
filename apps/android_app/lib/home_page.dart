import 'package:android_app/customer_module/page/add_customer_page.dart';
import 'package:android_app/customer_module/page/customer_list_fragment.dart';
import 'package:android_app/order_module/page/add_order_page.dart';
import 'package:android_app/order_module/page/order_list_fragment.dart';
import 'package:android_app/product_module/page/product_list_fragment.dart';
import 'package:android_app/user_management_module/page/controller/get_attendance_data_controller.dart';
import 'package:android_app/user_management_module/page/login_page.dart';
import 'package:android_app/user_management_module/page/profile_fragment.dart';
import 'package:android_app/utils/connection_status_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:android_app/visit_module/page/visit_list_fragment.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final selectedIndexProvider = StateProvider<int>((ref) => 0);

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePage();
}

class _HomePage extends ConsumerState<HomePage> {
  DateTime? lastPressed;
  IconData? rightButtonIcon;
  void Function()? onRightPressed;

  final List<Widget> pages = [
    const VisitListFragment(),
    const OrderListFragment(),
    const CustomerListFragment(),
    const ProductListFragment(),
    const ProfileFragment(),
  ];

  final List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.directions_walk),
      label: 'Kunjungan',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Pesanan',
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Pelanggan'),
    const BottomNavigationBarItem(icon: Icon(Icons.widgets), label: 'Produk'),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
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
            builder: (_) => LoginPage(kicked: true, reason: 'Anda Belum Login'),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = ref.watch(selectedIndexProvider);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        final now = DateTime.now();
        const duration = Duration(seconds: 2);

        if (lastPressed == null || now.difference(lastPressed!) > duration) {
          lastPressed = now;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Tekan dua kali untuk keluar'),
              behavior: SnackBarBehavior.floating,
              duration: duration,
            ),
          );
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        appBar: customAppBar(
          context: context,
          title: 'Salesku App',
          showLeftButton: true,
          // leftButtonWidget: Image.asset('assets/logo.png', height: 60.h),
          leftButtonWidget: Icon(
            ref.watch(connectionStatusProvider) ? Icons.wifi : Icons.wifi_off,
            color:
                ref.watch(connectionStatusProvider)
                    ? Theme.of(context).colorScheme.tertiary
                    : Theme.of(context).colorScheme.error,
          ),
          rightButtonIcon: rightButtonIcon,
          onRightPressed: onRightPressed,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.r),
          child: pages[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            if (pages[index] is OrderListFragment) {
              rightButtonIcon = Icons.add;
              onRightPressed = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddOrderPage()),
                );
              };
            } else if (pages[index] is CustomerListFragment) {
              rightButtonIcon = Icons.add;
              onRightPressed = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddCustomerPage(),
                  ),
                );
              };
            } else if (pages[index] is ProfileFragment) {
              rightButtonIcon = Icons.refresh;
              onRightPressed = () {
                ref.invalidate(getAttendanceDataControllerProvider);
              };
            } else {
              rightButtonIcon = null;
              onRightPressed = null;
            }

            setState(() {
              ref.read(selectedIndexProvider.notifier).state = index;
            });
          },
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(
            context,
          ).colorScheme.onSurface.withAlpha(150),

          type: BottomNavigationBarType.shifting,

          selectedIconTheme: IconThemeData(size: 32.sp),
          unselectedIconTheme: IconThemeData(size: 28.sp),

          selectedLabelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
          ),

          items: navBarItems,
        ),
      ),
    );
  }
}
