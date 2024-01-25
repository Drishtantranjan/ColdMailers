import 'package:cold_mailing/core/utils/app_text.dart';
import 'package:cold_mailing/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/colors.gen.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final ImageProvider imageProvider;
    final ImageProvider avatarImage;
  final String title;
  final String name;
  final String summary;

  const CardWidget({
    Key? key,
    required this.title,
    required this.name,
    required this.summary,
    required this.child,
    required this.imageProvider,
    this.padding,
    required this.avatarImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.4,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3.0,
            offset: Offset(1.0, 5.0),
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black26,
                  Colors.black54,
                ],
                stops: [0.0, 0.7, 1.0],
              ),
            ),
            child: Column(
              children: [
                20.verticalSpace,
                CircleAvatar(
                  radius: 35,
                  backgroundColor: AppColors.white,
                  foregroundImage: avatarImage,
                ),
                5.verticalSpace,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        appTextS2(
                          title,
                          color: AppColors.white,
                          textAlign: TextAlign.start,
                        ),
                        appTextS5(name, color: AppColors.white),
                        appTextS71(summary, color: AppColors.white),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: () {
                // Handle button press
              },
              icon: Icon(Icons.double_arrow_rounded),
              color: AppColors.white,
              iconSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}