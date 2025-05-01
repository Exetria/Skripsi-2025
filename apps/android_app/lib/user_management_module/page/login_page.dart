import 'package:android_app/home_page.dart';
import 'package:android_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:android_app/user_management_module/page/controller/check_user_data_controller.dart';
import 'package:android_app/user_management_module/page/controller/refresh_token_controller.dart';
import 'package:android_app/user_management_module/page/controller/sign_in_controller.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulHookConsumerWidget {
  bool kicked;
  String reason;
  LoginPage({super.key, this.kicked = false, this.reason = ''});

  @override
  ConsumerState<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends ConsumerState<LoginPage> {
  bool obscurePassword = true;
  bool buttonEnabled = true;

  @override
  void initState() {
    super.initState();

    // Handle kicked user from HomePage
    if (widget.kicked) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        showFeedbackDialog(context: context, type: 2, message: widget.reason);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    autoFillCredentials(
      emailController: emailController,
      passwordController: passwordController,
    );

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
              Image.asset('assets/logo.png', width: 100.w, height: 100.h),
              SizedBox(height: 32.h),

              // Email Field
              TextField(
                controller: emailController,
                style: bodyStyle,
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
                  filled: true,
                  fillColor: fillColor,
                ),
              ),
              SizedBox(height: 16.h),

              // Password Field
              TextField(
                controller: passwordController,
                obscureText: obscurePassword,
                style: bodyStyle,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: bodyStyle,
                  prefixIcon: Icon(Icons.lock, color: textColor.withAlpha(178)),
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
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  filled: true,
                  fillColor: fillColor,
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
              SizedBox(height: 8.h),

              // Login Button or Loader
              Center(
                child:
                    buttonEnabled
                        ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              buttonEnabled = false;
                            });
                            doSignIn(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor,
                            foregroundColor: invertedTextColor,
                            padding: EdgeInsets.symmetric(
                              horizontal: 80.w,
                              vertical: 10.h,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                          ),
                          child: Text('Login', style: buttonStyle),
                        )
                        : const CircularProgressIndicator(strokeWidth: 4),
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
        checkUserData(result: result, password: password);
      }
      // If fail (wrong email/password)
      else if (state is AsyncError) {
        final apiException = state.error as ApiException;
        if (apiException.responseBody?['error']['message'] != null) {
          showFeedbackDialog(
            context: context,
            type: 3,
            message:
                apiException.responseBody?['error']['message'] ==
                        'INVALID_LOGIN_CREDENTIALS'
                    ? 'Wrong Email or Password'
                    : apiException.responseBody?['error']['message'] ==
                        'INVALID_EMAIL'
                    ? 'Invalid Email'
                    : 'Unknown Error',
            onClose: () {
              setState(() {
                buttonEnabled = true;
              });
            },
          );
        } else {
          showFeedbackDialog(
            context: context,
            type: 3,
            message: apiException.message,
            onClose: () {
              setState(() {
                buttonEnabled = true;
              });
            },
          );
        }
      }
    }
    // If email is empty
    else if (email == '') {
      showFeedbackDialog(
        context: context,
        type: 2,
        message: 'Email is Empty',
        onClose: () {
          setState(() {
            buttonEnabled = true;
          });
        },
      );
    }
    // If password is empty
    else if (password == '') {
      showFeedbackDialog(
        context: context,
        type: 2,
        message: 'Password is Empty',
        onClose: () {
          setState(() {
            buttonEnabled = true;
          });
        },
      );
    }
    // Other error
    else {
      showFeedbackDialog(
        context: context,
        type: 2,
        message: 'An Unknown Error Occured',
        onClose: () {
          setState(() {
            buttonEnabled = true;
          });
        },
      );
    }
  }

  void checkUserData({
    required SignInDomain? result,
    required String password,
  }) async {
    final userValue = await ref
        .watch(checkUserDataControllerProvider.notifier)
        .checkUserData(
          idToken: result?.idToken ?? '',
          uid: result?.localId ?? '',
        );

    if (userValue?.fields?.role?.stringValue == 'sales') {
      userDataHelper = UserDataHelper(
        uid: result?.localId ?? '',
        name: result?.displayName ?? '',
        email: result?.email ?? '',
        phone: userValue?.fields?.phoneNumber?.stringValue ?? '',
        role: userValue?.fields?.role?.stringValue ?? '',
        idToken: result?.idToken ?? '',
        refreshToken: result?.refreshToken ?? '',
        assignedProducts: [],
        assignedCustomers: [],
      );

      saveUserDataToSp(
        localId: result?.localId ?? '',
        displayName: result?.displayName ?? '',
        email: result?.email ?? '',
        password: password,
        phoneNumber: userValue?.fields?.phoneNumber?.stringValue ?? '',
        role: userValue?.fields?.role?.stringValue ?? '',
        idToken: result?.idToken ?? '',
        refreshToken: result?.refreshToken ?? '',
      );

      ref.read(refreshTokenControllerProvider.notifier).startAutoRefreshToken();

      showFeedbackDialog(
        context: context,
        type: 1,
        message: 'Login Successful',
        onClose: () {
          setState(() {
            buttonEnabled = true;
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
      );
    } else {
      showFeedbackDialog(
        context: context,
        type: 3,
        message: 'Sorry, You\'re Not a Sales',
        onClose: () {
          setState(() {
            buttonEnabled = true;
          });
        },
      );
    }
  }

  void autoFillCredentials({
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) async {
    String email = await getDataFromSp(key: 'email') ?? '';
    String password = await getDataFromSp(key: 'password') ?? '';

    if (emailController.text == '') emailController.text = email;
    if (passwordController.text == '') passwordController.text = password;
  }
}
