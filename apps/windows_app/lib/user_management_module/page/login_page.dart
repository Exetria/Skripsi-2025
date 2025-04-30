import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/home_page.dart';
import 'package:windows_app/user_management_module/domain/entities/sign_in_domain.dart';
import 'package:windows_app/user_management_module/page/controller/check_user_data_controller.dart';
import 'package:windows_app/user_management_module/page/controller/sign_in_controller.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulHookConsumerWidget {
  bool kicked;
  LoginPage({super.key, this.kicked = false});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool obscurePassword = true;
  bool buttonEnabled = true;

  @override
  void initState() {
    super.initState();

    // Handle kicked user from HomePage
    if (widget.kicked) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        showFeedbackDialog(
          context: context,
          type: 2,
          message: 'User Not Signed In',
        );
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
                      obscureText: obscurePassword,
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
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: textColor.withAlpha(178),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 32), // Fixed height spacing
                    // Login Button
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
                              )
                              : const CircularProgressIndicator(strokeWidth: 4),
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

    if (userValue?.fields?.role?.stringValue == 'admin') {
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
        message: 'Sorry, You\'re Not an Admin',
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
