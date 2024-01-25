
import 'package:flutter/cupertino.dart';

import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import 'font_size.dart';

class AppStyles {
  static final h1 = TextStyle(
    fontSize: FontSize.xxxxxl,
    fontWeight: FontWeight.w700,
  );
  static final h2 = TextStyle(
    fontSize: FontSize.xl,
    fontWeight: FontWeight.w700,
  );

  static final s1 = TextStyle(
    fontSize: FontSize.xxxs,
    fontWeight: FontWeight.w500,
    color: AppColors.blackTitles,
  );
  static final s2 =
  TextStyle(fontSize: FontSize.size14, fontWeight: FontWeight.w500);

  static final s2_2 = TextStyle(
      fontSize: FontSize.size14,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.277);

  //TODO: remove post R1 ,it's temporary basis
  static final s22 =
  TextStyle(fontSize: FontSize.size18, fontWeight: FontWeight.w700);

  //TODO: remove post R1 , it's temporary basis
  static final s222 =
  TextStyle(fontSize: FontSize.size20, fontWeight: FontWeight.w700);

  static final s3 = TextStyle(
    fontSize: FontSize.xxxxs,
    fontWeight: FontWeight.w500,
    color: AppColors.blackTitles,
  );
  static final s4 = TextStyle(
    fontSize: FontSize.xs,
    fontWeight: FontWeight.w600,
    color: AppColors.blackTitles,
  );
  static final s5 = TextStyle(
    fontSize: FontSize.xxxs,
    fontWeight: FontWeight.w600,
    color: AppColors.blackTitles,
  );

  static final s6_1 = TextStyle(
    fontSize: FontSize.xxxxxs,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  static final s6_2 = TextStyle(
    fontSize: FontSize.xxxxxs,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static final s71 = TextStyle(
    fontSize: FontSize.xxxxxxs,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static final s7_2 =
  TextStyle(fontSize: FontSize.size10, fontWeight: FontWeight.w700);

  static final s7_1 =
  TextStyle(fontSize: FontSize.size10, fontWeight: FontWeight.w400);

  static final r2 = TextStyle(
      fontSize: FontSize.l,
      fontWeight: FontWeight.w600,
      fontFamily: Fonts.sofiaPro,
      color: AppColors.white
  );

  static final r3_1 = TextStyle(
      fontSize: FontSize.xxxxs,
      fontWeight: FontWeight.w600,
      fontFamily: Fonts.sofiaPro,
      color: AppColors.white
  );

  static final buttonText = TextStyle(
    fontSize: FontSize.xxxs,
    fontWeight: FontWeight.w500,
    color: AppColors.buttonPrimaryText,
  );

  static final text12 = TextStyle(
    fontSize: FontSize.xxxxxs,
    fontWeight: FontWeight.w500,
    color: AppColors.buttonPrimaryText,
  );

  static final orbitronTitle = TextStyle(
    fontSize: FontSize.xxl,
    fontWeight: FontWeight.w500,
    color: AppColors.buttonPrimaryText,
    fontFamily: Fonts.sofiaPro,
  );
}
