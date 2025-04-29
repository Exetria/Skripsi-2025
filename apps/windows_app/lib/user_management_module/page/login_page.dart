import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/home_page.dart';
import 'package:windows_app/user_management_module/page/controller/sign_in_controller.dart';
import 'package:windows_app/utils/functions.dart';

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
                          // TODO: Enable Login Again
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const HomePage(),
                          //   ),
                          // );

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
          // TODO: Change to real role from FireStore
          role: 'admin',
          idToken: result?.idToken ?? '',
          refreshToken: result?.refreshToken ?? '',
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
          );
        } else {
          showFeedbackDialog(
            context: context,
            type: 3,
            message: apiException.message,
          );
        }
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
