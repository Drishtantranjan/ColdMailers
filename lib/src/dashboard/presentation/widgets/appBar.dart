import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';

typedef TextFieldCallback = void Function(bool isTextFieldTapped);

class CustomBarWidget extends StatefulWidget implements PreferredSizeWidget {
  final TextFieldCallback onTextFieldTap;

  CustomBarWidget({required this.onTextFieldTap});

  @override
  _CustomBarWidgetState createState() => _CustomBarWidgetState();

  @override
  Size get preferredSize => Size.fromHeight(80);
}

class _CustomBarWidgetState extends State<CustomBarWidget> {
  TextEditingController _textController = TextEditingController();
  bool isTextFieldTapped = false;

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
                child: isTextFieldTapped
                    ? IconButton(
                  icon: Padding(
                    padding: EdgeInsets.only(right: 10.0.sp),
                    child: Icon(Icons.arrow_back),
                  ),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    setState(() {
                      isTextFieldTapped = false;
                      widget.onTextFieldTap(isTextFieldTapped);
                    });
                  },
                )
                    : CircleAvatar(
                  backgroundImage:
                  AssetImage(Assets.icons.home.dummyImage.path),
                  backgroundColor: Color(0xFFEEF3F8),
                  radius: 20,
                ),
              ),
            ),
          ),
          if (!isTextFieldTapped)
            Padding(
              padding: EdgeInsets.only(top: 8.0.sp, right: 10.sp),
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
            left: isTextFieldTapped
                ? MediaQuery.of(context).size.width * 0.07
                : MediaQuery.of(context).size.width * 0.09,
            right: isTextFieldTapped
                ? MediaQuery.of(context).size.width * 0.01
                : MediaQuery.of(context).size.width * 0.05,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: AppColors.transparent,
                    width: 1.0,
                  ),
                  color: AppColors.appbar,
                ),
                child: TextField(
                  controller: _textController,
                  onTap: () {
                    setState(() {
                      isTextFieldTapped = true;
                      widget.onTextFieldTap(isTextFieldTapped);
                    });
                  },
                  onEditingComplete: () {
                    // Handle search action if needed
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                        color: AppColors.form,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                    hintText: "Search company",
                    prefixIcon: Icon(
                      Icons.search,
                      color: AppColors.form,
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
}
