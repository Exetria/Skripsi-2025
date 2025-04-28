import 'package:android_app/homePage.dart';
import 'package:android_app/user_management_module/page/controller/sign_in_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
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
                  onPressed: () {
                    doSignIn(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  },

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

  void doSignIn({required String email, required String password}) async {
    if (email != '' && password != '') {
      final state = await ref
          .watch(signInControllerProvider.notifier)
          .signIn(email: email, password: password);

      // If success
      if (state is AsyncData) {
        final result = state.value;

        // TODO: Fetch user role from firestore

        saveUserDataToSp(
          localId: result?.localId ?? '',
          email: result?.email ?? '',
          password: password,
          displayName: result?.displayName ?? '',
          role: 'admin',
          idToken: result?.idToken ?? '',
          refreshToken: result?.refreshToken ?? '',
        );

        userDataHelper = UserDataHelper(
          id: result?.localId ?? '',
          name: result?.displayName ?? '',
          email: result?.email ?? '',
          role: 'admin',
          idToken: result?.idToken ?? '',
        );

        showFeedbackDialog(
          context: context,
          type: 1,
          message: 'Login Successful',
          onClose: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        );
      }
      // If fail (wrong email/password)
      else if (state is AsyncError) {
        final apiException = state.error as ApiException;
        final String message = apiException.responseBody?['error']['message'];
        showFeedbackDialog(
          context: context,
          type: 3,
          message:
              message == 'INVALID_LOGIN_CREDENTIALS'
                  ? 'Wrong Email or Password'
                  : message == 'INVALID_EMAIL'
                  ? 'Invalid Email'
                  : 'An Unknown Error Occured',
        );
      }
    }
    // If email is empty
    else if (email == '') {
      showFeedbackDialog(context: context, type: 2, message: 'Email is Empty');
    }
    // If password is empty
    else if (password == '') {
      showFeedbackDialog(
        context: context,
        type: 2,
        message: 'Password is Empty',
      );
    }
    // Other error
    else {
      showFeedbackDialog(
        context: context,
        type: 2,
        message: 'An Unknown Error Occured',
      );
    }
  }
  // buttonEnabled
  //     ? () async {
  //       setState(() {
  //         buttonEnabled = false;
  //       });
  //       setState(() {
  //         buttonEnabled = true;
  //       });

  //       // showCustomDialog(
  //       //   context,
  //       //   'Login Success',
  //       //   duration: const Duration(seconds: 1),
  //       //   onClosed: () {
  //       //     Navigator.pushReplacement(
  //       //       context,
  //       //       MaterialPageRoute(
  //       //         builder: (context) => const HomePage(),
  //       //       ),
  //       //     );
  //       //   },
  //       // );
  //     }
  //     : null;
}
