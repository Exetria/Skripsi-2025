import 'package:android_app/customer/customerDetailPage.dart';
import 'package:android_app/product/productDetailPage.dart';
import 'package:android_app/profile/profilePage.dart';
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

  int _selectedIndex = 0; // Current selected tab index

  // List of pages for each tab
  final List<Widget> _pages = [
    VisitDetailPage(),
    CustomerDetailPage(),
    ProductDetailPage(),
    ProfilePage(),
    const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Add Page', style: TextStyle(fontSize: 24))),
    const Center(
      child: Text('Notifications Page', style: TextStyle(fontSize: 24)),
    ),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false, // Prevents default back behavior
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
          Navigator.of(context).pop(); // Exits the app
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: _pages[_selectedIndex], // Show selected page
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index; // Update selected index
            });
          },
          type:
              BottomNavigationBarType.fixed, // Ensures all 5 icons are visible
          selectedItemColor: Colors.blue, // Active item color
          unselectedItemColor: Colors.grey, // Inactive item color
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
