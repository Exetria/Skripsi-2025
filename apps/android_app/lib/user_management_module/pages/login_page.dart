import 'dart:async';

import 'package:android_app/home_page.dart';
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
                  labelStyle: bodyStyle,
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
                  labelStyle: bodyStyle,
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
                    style: captionStyle.copyWith(fontSize: 14.sp),
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
                            await Future.delayed(const Duration(seconds: 2));
                            // String? result = await signIn(
                            //   emailController.text,
                            //   passwordController.text,
                            //   ref,
                            // );
                            setState(() {
                              buttonEnabled = true;
                            });

                            showCustomDialog(
                              context,
                              'Login Success',
                              duration: const Duration(seconds: 1),
                              onClosed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ),
                                );
                              },
                            );

                            // ref
                            //     .watch(authStateProvider)
                            //     .when(
                            //       data: (user) {
                            //         if (user != null) {
                            //           showCustomDialog(
                            //             context,
                            //             'Login Success',
                            //             duration: const Duration(seconds: 1),
                            //             onClosed: () {
                            //               Navigator.pushReplacement(
                            //                 context,
                            //                 MaterialPageRoute(
                            //                   builder:
                            //                       (context) => const HomePage(),
                            //                 ),
                            //               );
                            //             },
                            //           );
                            //         } else {
                            //           showCustomDialog(
                            //             context,
                            //             'Login Failed',
                            //             body: result,
                            //             duration: const Duration(
                            //               milliseconds: 1500,
                            //             ),
                            //           );
                            //         }
                            //       },
                            //       loading: () {},
                            //       error: (error, stackTrace) {
                            //         showCustomDialog(
                            //           context,
                            //           'Login Failed',
                            //           body: result,
                            //           duration: const Duration(
                            //             milliseconds: 1500,
                            //           ),
                            //         );
                            //       },
                            //     );
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

  void showCustomDialog(
    BuildContext context,
    String title, {
    bool dismissable = false,
    String? subtitle,
    String? body,
    Duration? duration,
    Function()? onClosed,
  }) {
    bool dialogOpen = true;
    showDialog(
      context: context,
      barrierDismissible: dismissable,
      builder: (context) {
        Future.delayed(duration ?? const Duration(seconds: 2), () {
          if (dialogOpen) {
            Navigator.pop(context);
            dialogOpen = false;
            if (onClosed != null) {
              onClosed();
            }
          }
        });
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Prevent it from expanding fully
              children: [
                Text(title, style: titleStyle),
                subtitle != null
                    ? const SizedBox(height: 10)
                    : const SizedBox(),
                subtitle != null
                    ? Text(subtitle, style: subtitleStyle)
                    : const SizedBox(),
                body != null ? const SizedBox(height: 20) : const SizedBox(),
                body != null ? Text(body, style: bodyStyle) : const SizedBox(),
              ],
            ),
          ),
        );
      },
    ).then((_) {
      // in case kalo di close manual
      dialogOpen = false;
    });
  }
}
