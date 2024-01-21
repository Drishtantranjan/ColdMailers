import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:text_divider/text_divider.dart';
import '../../../../core/utils/Background_Container.dart';
import '../../../../core/utils/FormField.dart';
import '../../../../gen/assets.gen.dart';
import '../../../dashboard/presentation/view/home.dart';
import '../../../onboarding/presentation/views/onboarding_screen.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
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
                  const Text(
                    "COLD MAILERS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Create Your Own Opportunities",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
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
                    obscureText: true,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const SignupScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "SignUp",
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
                              // if (_formKey.currentState?.validate() ?? false) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Homepage(),
                                  ),
                                );
                              // }
                            },
                            child: const Text(
                              "Login",
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
                  TextDivider.horizontal(
                    text: const Text(
                      'OR',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.white,
                    thickness: 2.0,
                  ),
                  40.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(Assets.icons.auth.icGoogle),
                        ),
                      ),
                      20.horizontalSpace,
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(Assets.icons.auth.icLinkedin),
                        ),
                      ),
                      20.horizontalSpace,
                      CircleAvatar(
                        radius: 30.r,
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(Assets.icons.auth.icGithub),
                        ),
                      ),
                    ],
                  )
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
