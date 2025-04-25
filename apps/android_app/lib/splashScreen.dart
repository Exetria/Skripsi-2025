import 'package:android_app/user_management_module/pages/loginPage.dart';
import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends StatefulHookConsumerWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool navigated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    )..forward();

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted || navigated) return;

      Future.delayed(const Duration(seconds: 3), () {
        if (!mounted || navigated) return;

        if (!navigated) {
          navigated = true;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
            // MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      });

      // if (FirebaseAuth.instance.currentUser == null && !navigated) {
      //   navigated = true;
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => const LoginPage()),
      //   );
      // } else {
      //   navigated = true;
      //   Navigator.pushReplacement(
      //     context,
      //     MaterialPageRoute(builder: (context) => const HomePage()),
      //   );
      // }

      // Future.delayed(const Duration(seconds: 3), () {
      //   if (!mounted || navigated) return;

      //   if (!navigated) {
      //     navigated = true;
      //     Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(builder: (context) => const LoginPage()),
      //     );
      //   }
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', width: 100.w, height: 100.h),
              SizedBox(height: 20.h),
              Text('Salesku App', style: titleStyle),
            ],
          ),
        ),
      ),
    );
  }
}
