import 'package:android_app/customer/customerDetailPage.dart';
import 'package:android_app/order/orderListPage.dart';
import 'package:android_app/product/productDetailPage.dart';
import 'package:android_app/profile/profilePage.dart';
import 'package:android_app/variables.dart';
import 'package:android_app/visit/visitDetailPage.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePage();
}

class _HomePage extends ConsumerState<HomePage> {
  DateTime? lastPressed;

  int _selectedIndex = 0;

  final List<Widget> _pages = [
    VisitDetailPage(),
    CustomerDetailPage(),
    ProductDetailPage(),
    OrderListPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
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
              duration: duration,
            ),
          );
        } else {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Visits',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Orders',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),

            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Customers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inventory_2),
              label: 'Products',
            ),
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
