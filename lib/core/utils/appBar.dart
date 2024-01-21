import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/colors.gen.dart';

class CustomBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColors.white, 
        statusBarIconBrightness: Brightness.dark, 
      ),
    );

    return Container(
      height: 110.0.h,
      child: Stack(
        children: <Widget>[
          Container(
            color: AppColors.white,
            width: MediaQuery.of(context).size.width,
            height: 80.0,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 6.0.sp, top: 8.sp),
                child: CircleAvatar(
                  backgroundColor: AppColors.background,
                  radius: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Icon(Icons.more_vert_rounded),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.025,
            left: MediaQuery.of(context).size.width * 0.09,
            right: MediaQuery.of(context).size.width * 0.05,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  border: Border.all(
                    color: AppColors.formLight,
                    width: 1.0,
                  ),
                  color: AppColors.background,
                ),
                child: TextField(
                  enabled: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: AppColors.hintColor,
                    ),
                    hintText: "Search company",
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.hintColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Divider(
              height: 1,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80);
}
