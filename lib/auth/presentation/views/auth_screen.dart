import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          100.verticalSpace,
          Container(
            padding: EdgeInsets.all(0.25.sp),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icons/auth/ic_login.svg",
                height: 100.h,
                width: 100.w

            ),
          ),
        ],
      ),
    );
  }
}
