import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/functions.dart';
import 'package:windows_app/helper/apiHelper.dart';
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
                width: double.infinity,
                padding: const EdgeInsets.all(32), // Fixed padding
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Login', style: titleStyle),
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
    print('asds login: $email, $password');
    if (email != '' && password != '') {
      final state = await ref
          .watch(signInControllerProvider.notifier)
          .signIn(email: email, password: password);

      if (state is AsyncData) {
        final result = state.value;
        print('asds success $result');
      } else if (state is AsyncError) {
        final apiException = state.error as ApiException;
        print('asds error ${apiException.responseBody}');
      }
    } else if (email == '') {
      showFeedbackPopup(context: context, type: 2, message: 'Email is Empty');
    } else if (password == '') {
      showFeedbackPopup(
        context: context,
        type: 2,
        message: 'Password is Empty',
      );
    } else {
      showFeedbackPopup(context: context, type: 2, message: 'An Error Occured');
    }
  }
}
