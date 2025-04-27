import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/functions.dart';
import 'package:windows_app/helper/apiHelper.dart';
import 'package:windows_app/helper/sharedPreferenceHelper.dart';
import 'package:windows_app/helper/userDataHelper.dart';
import 'package:windows_app/home_page.dart';
import 'package:windows_app/user_management_module/controller/sign_in_controller.dart';

class LoginPage extends StatefulHookConsumerWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24), // Fixed padding
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16), // Fixed border radius
            child: Card(
              elevation: 12,
              shadowColor: Colors.black.withAlpha(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                padding: const EdgeInsets.all(32), // Fixed padding
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Text('Login', style: titleStyle)),
                    const SizedBox(height: 32), // Fixed height spacing
                    // Email TextField
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: bodyStyle,
                        hintText: 'Enter your email',
                        hintStyle: hintStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: dividerColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: dividerColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16), // Fixed height spacing
                    // Password TextField
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: bodyStyle,
                        hintText: 'Enter your password',
                        hintStyle: hintStyle,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: dividerColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: dividerColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: primaryColor, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32), // Fixed height spacing
                    // Login Button
                    Center(
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
                          padding: const EdgeInsets.symmetric(
                            horizontal: 64,
                            vertical: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text('Login', style: buttonStyle),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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

        // TODO: Fetch user role

        SharedPreferenceHelper.saveUserDataToSp(
          email: result?.email ?? '',
          password: password,
          displayName: result?.displayName ?? '',
          role: 'admin',
          idToken: result?.idToken ?? '',
          refreshToken: result?.refreshToken ?? '',
        );

        userDataHelper = UserDataHelper(
          name: result?.displayName ?? '',
          email: result?.email ?? '',
          password: password,
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
}
