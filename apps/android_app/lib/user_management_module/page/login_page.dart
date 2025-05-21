import 'package:android_app/home_page.dart';
import 'package:android_app/user_management_module/domain/entities/check_user_data_domain.dart';
import 'package:android_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:android_app/user_management_module/page/controller/check_user_data_controller.dart';
import 'package:android_app/user_management_module/page/controller/refresh_token_controller.dart';
import 'package:android_app/user_management_module/page/controller/sign_in_controller.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
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
  bool _obscurePassword = true;
  bool _signInButtonEnabled = true;

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    autoFillCredentials(
      emailController: _emailController,
      passwordController: _passwordController,
    );

    return Scaffold(
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
                autofocus: false,
                focusNode: _emailFocusNode,
                controller: _emailController,
                style: bodyStyle,
                decoration: InputDecoration(
                  labelText: 'Email',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 16.w,
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
              SizedBox(height: 16.h),

              // Password Field
              TextField(
                autofocus: false,
                focusNode: _passwordFocusNode,
                controller: _passwordController,
                obscureText: _obscurePassword,
                style: bodyStyle,
                decoration: InputDecoration(
                  labelText: 'Password',
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 16.w,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),

              // No forgot Password
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: TextButton(
              //     onPressed: () {
              //       showFeedbackDialog(
              //         context: context,
              //         type: 2,
              //         message: 'Please Contact Your Admin',
              //       );
              //     },
              //     child: Text(
              //       'Forgot Password?',
              //       style: captionStyle.copyWith(fontSize: 14.sp),
              //     ),
              //   ),
              // ),
              SizedBox(height: 32.h),

              // Login Button or Loader
              Center(
                child:
                    _signInButtonEnabled
                        ? ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _signInButtonEnabled = false;
                            });
                            doSignIn(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 80.w,
                              vertical: 10.h,
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

  List<String> convertAssignedItemsToArray(List<Email> emailList) {
    if (emailList.isEmpty) {
      return [];
    }

    List<String> result = [];

    for (Email value in emailList) {
      String content = value.stringValue ?? '';
      if (content != '') result.add(content);
    }

    return result;
  }

  void doSignIn({required String email, required String password}) async {
    _emailFocusNode.unfocus();
    _passwordFocusNode.unfocus();
    if (email != '' && password != '') {
      final state = await ref
          .read(signInControllerProvider.notifier)
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
                    ? 'Email atau Password Salah'
                    : apiException.responseBody?['error']['message'] ==
                        'INVALID_EMAIL'
                    ? 'Email Tidak Valid'
                    : 'Unknown Error',
            onClose: () {
              setState(() {
                _signInButtonEnabled = true;
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
                _signInButtonEnabled = true;
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
        message: 'Email Kosong',
        onClose: () {
          setState(() {
            _signInButtonEnabled = true;
          });
        },
      );
    }
    // If password is empty
    else if (password == '') {
      showFeedbackDialog(
        context: context,
        type: 2,
        message: 'Password Kosong',
        onClose: () {
          setState(() {
            _signInButtonEnabled = true;
          });
        },
      );
    }
    // Other error
    else {
      showFeedbackDialog(
        context: context,
        type: 2,
        message: 'Terjadi Kesalahan',
        onClose: () {
          setState(() {
            _signInButtonEnabled = true;
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
        .read(checkUserDataControllerProvider.notifier)
        .checkUserData(
          idToken: result?.idToken ?? '',
          uid: result?.localId ?? '',
        );

    if (userValue?.fields?.role?.stringValue == 'sales') {
      userDataHelper = UserDataHelper(
        uid: result?.localId ?? '',
        userName: userValue?.fields?.userName?.stringValue ?? '',
        fullName: userValue?.fields?.fullName?.stringValue ?? '',
        email: result?.email ?? '',
        phone: userValue?.fields?.phoneNumber?.stringValue ?? '',
        photoUrl: userValue?.fields?.photoUrl?.stringValue ?? '',
        role: userValue?.fields?.role?.stringValue ?? '',
        idToken: result?.idToken ?? '',
        refreshToken: result?.refreshToken ?? '',
        assignedProducts: convertAssignedItemsToArray(
          userValue?.fields?.assignedProducts?.arrayValue?.values ?? [],
        ),
        assignedCustomers: convertAssignedItemsToArray(
          userValue?.fields?.assignedCustomers?.arrayValue?.values ?? [],
        ),
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

      setState(() {
        _signInButtonEnabled = true;
      });

      showFeedbackDialog(
        context: context,
        type: 1,
        message: 'Login Sukses',
        onClose: () {
          Future.delayed(const Duration(milliseconds: 250), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          });
        },
      );
    } else {
      showFeedbackDialog(
        context: context,
        type: 3,
        message: 'Maaf, Anda Tidak Memiliki Akses',
        onClose: () {
          setState(() {
            _signInButtonEnabled = true;
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
