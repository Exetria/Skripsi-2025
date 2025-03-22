import 'package:android_app/home_page.dart';
import 'package:android_app/user_management_module/data/firebase_auth.dart';
import 'package:android_app/user_management_module/pages/widgets.dart';
import 'package:android_app/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends StatefulHookConsumerWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends ConsumerState<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;
  bool buttonEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Logo
              Image.asset(
                'assets/logo.png',
                width: 100.w,
                height: 100.h,
                // fit: BoxFit.contain,
              ),
              SizedBox(height: 32.h),

              // Email Field
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: bodyStyle.copyWith(
                    fontSize: 16.sp,
                    color: textColor,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: textColor.withAlpha(178),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),

              // Password Field
              TextField(
                controller: passwordController,
                obscureText: obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: bodyStyle.copyWith(
                    fontSize: 16.sp,
                    color: textColor,
                  ),
                  prefixIcon: Icon(Icons.lock, color: textColor.withAlpha(178)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscurePassword = !obscurePassword;
                      });
                    },
                    icon: Icon(
                      obscurePassword ? Icons.visibility_off : Icons.visibility,
                      color: textColor.withAlpha(178),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // TODO: Implement forgot password action
                  },
                  child: Text(
                    'Forgot Password?',
                    style: warningStyle.copyWith(fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(height: 24.h),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                  onPressed:
                      buttonEnabled
                          ? () async {
                            setState(() {
                              buttonEnabled = false;
                            });

                            FocusScope.of(context).unfocus();
                            String? result = await signIn(
                              emailController.text,
                              passwordController.text,
                              ref,
                            );
                            setState(() {
                              buttonEnabled = true;
                            });

                            ref
                                .watch(authStateProvider)
                                .when(
                                  data: (user) {
                                    if (user != null) {
                                      showCustomDialog(
                                        context,
                                        'Login Success',
                                        duration: const Duration(seconds: 1),
                                        onClosed: () {
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder:
                                                  (context) => const HomePage(),
                                            ),
                                          );
                                        },
                                      );
                                    } else {
                                      showCustomDialog(
                                        context,
                                        'Login Failed',
                                        body: result,
                                        duration: const Duration(
                                          milliseconds: 1500,
                                        ),
                                      );
                                    }
                                  },
                                  loading: () {},
                                  error: (error, stackTrace) {
                                    showCustomDialog(
                                      context,
                                      'Login Failed',
                                      body: result,
                                      duration: const Duration(
                                        milliseconds: 1500,
                                      ),
                                    );
                                  },
                                );

                            // ref.watch(authStateProvider).whenData((value) {
                            //   if (value != null) {
                            //
                            //   }
                            // });
                          }
                          : null,

                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    foregroundColor: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child:
                      buttonEnabled
                          ? Text(
                            'Login',
                            style: buttonStyle.copyWith(fontSize: 18.sp),
                          )
                          : const CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
