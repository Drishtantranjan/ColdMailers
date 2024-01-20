import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:text_divider/text_divider.dart';

import '../../../../core/utils/Background_Container.dart';
import '../../../../core/utils/FormField.dart';
import '../../../onboarding/presentation/views/onboarding_screen.dart';
import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        ),
      ),
      body: BackgroundContainer(
        imageProvider: AssetImage("assets/icons/auth/bg_auth.png"),
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  150.verticalSpace,
                  Text(
                    "Create an account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Craft your future ooportunites & Build Your Path to Success",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  50.verticalSpace,
                  FormFieldWidget<String>(
                    controller: emailController,
                    hint_text: "Email",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email cannot be empty';
                      } else if (!_isEmailFormat(value)) {
                        return 'Enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  10.verticalSpace,
                  FormFieldWidget<String>(
                    controller: passwordController,
                    hint_text: "Password",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password cannot be empty';
                      } else if (value.length < 8) {
                        return 'Password must be at least 8 characters';
                      } else if (!_containsNumber(value)) {
                        return 'Password must contain at least one number';
                      } else if (!_containsUpperCase(value)) {
                        return 'Password must contain at least one uppercase letter';
                      }
                      return null;
                    },
                  ),
                  10.verticalSpace,
                  FormFieldWidget<String>(
                    controller: confirmPasswordController,
                    hint_text: "Confirm Password",
                    validator: (value) {
                    if (value == null || value.isEmpty) {
                    return 'Confirm Password cannot be empty';
                    } else if (value != passwordController.text) {
                      return 'Passwords do not match';
                   }
                  return null;
                 },

                  ),
                  30.verticalSpace,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        0.1.horizontalSpace,
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          width: 150.w,
                          height: 50.h,
                          child: ElevatedButton(
                            onPressed: () {
                              // Validate the form
                              if (_formKey.currentState?.validate() ?? false) {
                                // If validation passes, move to the new page
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Onboarding(),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Color(0XFF020247),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isEmailFormat(String value) {
    final emailRegex =
    RegExp(r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$');
    return emailRegex.hasMatch(value);
  }

  bool _containsNumber(String value) {
    return RegExp(r'\d').hasMatch(value);
  }

  bool _containsUpperCase(String value) {
    return RegExp(r'[A-Z]').hasMatch(value);
  }
}

