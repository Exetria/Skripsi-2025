import 'package:android_app/customer_module/pages/addCustomerPage.dart';
import 'package:android_app/customer_module/pages/customerListFragment.dart';
import 'package:android_app/functions.dart';
import 'package:android_app/order_module/pages/addOrderPage.dart';
import 'package:android_app/order_module/pages/orderListFragment.dart';
import 'package:android_app/product_module/pages/productListFragment.dart';
import 'package:android_app/user_management_module/pages/profileFragment.dart';
import 'package:android_app/variables.dart';
import 'package:android_app/visit_module/pages/visitListFragment.dart';
import 'package:flutter/material.dart';
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

  @override
  void initState() {
    super.initState();

    // safeguard kalo belum login
    // if (FirebaseAuth.instance.currentUser == null) {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => const LoginPage()),
    //   );
    // }
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
              content: Text('Press back again to exit'),
              behavior: SnackBarBehavior.floating,
              duration: duration,
            ),
          );
        } else {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: customAppBar(
          title: 'Salesku App',
          showLeftButton: true,
          leftButtonWidget: Image.asset('assets/logo.png', height: 60.h),
          rightButtonIcon: rightButtonIcon,
          onRightPressed: onRightPressed,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.sp),
          child: pages[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            if (index == 1 || index == 2) {
              rightButtonIcon = Icons.add;
              onRightPressed = () {
                index == 1
                    ? Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddOrderPage(),
                      ),
                    )
                    : Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddCustomerPage(),
                      ),
                    );
              };
            } else {
              rightButtonIcon = null;
              onRightPressed = null;
            }

            setState(() {
              ref.read(selectedIndexProvider.notifier).state = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Visits',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Customers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2),
              label: 'Products',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

// VISIT
// 📍 Map Pin Icon → Icons.location_on
// 🗺️ Map Icon → Icons.map
// 📌 Location Pin Icon → Icons.place
// 🛤️ Route/Path Icon → Icons.route
// 🚶 Person Walking Icon → Icons.directions_walk
// 🚗 Car Route Icon → Icons.directions_car
// 📌 Navigation Pin → Icons.navigation

// ORDER
// 🧾 Receipt Icon → Icons.receipt_long
// 💳 Payment/Transaction Icon → Icons.payment
// 📄 Document/Paper Icon → Icons.description
// 🛒 Shopping Cart Icon → Icons.shopping_cart
// 💰 Money Icon → Icons.attach_money
// 🔄 Order Processing Icon → Icons.sync
// 🏷️ Tag (Sales) Icon → Icons.sell

// PROFILE
// 🏠 Home/Account Dashboard → Icons.account_circle
// 👤 User Avatar → Icons.account_box
// 🔄 Switch Account → Icons.manage_accounts
// 🆔 ID/Identity → Icons.badge
// ⚙️ Settings/Profile Management → Icons.settings
// 📇 Contacts/User List → Icons.contacts

// CUSTOMER
// 👥 Two People Icon → Icons.group
// 🏢 Business/Customers → Icons.business
// 🗂 Contacts/Clients → Icons.contacts
// 👨‍👩‍👧 Community/Users → Icons.diversity_3 (New in Flutter 3.7+)
// 📋 Customer List → Icons.list
// 🤝 Handshake (Partnership/Clients) → Icons.handshake

// PRODUCT
// 🛍️ Shopping Bag → Icons.shopping_bag
// 📦 Box/Package → Icons.inventory_2
// 🏷️ Tag (Product Label) → Icons.sell
// 🛒 Shopping Cart → Icons.shopping_cart
// 🏪 Store/Marketplace → Icons.store
