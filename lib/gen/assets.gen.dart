/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsSplashGen {
  const $AssetsSplashGen();

  /// File path: assets/Splash/Splash_Screen.mp4
  String get splashScreen => 'assets/Splash/Splash_Screen.mp4';

  /// List of all assets
  List<String> get values => [splashScreen];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  $AssetsIconsAuthGen get auth => const $AssetsIconsAuthGen();
  $AssetsIconsHomeGen get home => const $AssetsIconsHomeGen();
  $AssetsIconsOnboardingGen get onboarding => const $AssetsIconsOnboardingGen();
}

class $AssetsIconsAuthGen {
  const $AssetsIconsAuthGen();

  /// File path: assets/icons/auth/Login.png
  AssetGenImage get login => const AssetGenImage('assets/icons/auth/Login.png');

  /// File path: assets/icons/auth/bg_auth.png
  AssetGenImage get bgAuth =>
      const AssetGenImage('assets/icons/auth/bg_auth.png');

  /// File path: assets/icons/auth/facebook.png
  AssetGenImage get facebook =>
      const AssetGenImage('assets/icons/auth/facebook.png');

  /// File path: assets/icons/auth/ic_auth.png
  AssetGenImage get icAuth =>
      const AssetGenImage('assets/icons/auth/ic_auth.png');

  /// File path: assets/icons/auth/ic_github.svg
  String get icGithub => 'assets/icons/auth/ic_github.svg';

  /// File path: assets/icons/auth/ic_google.svg
  String get icGoogle => 'assets/icons/auth/ic_google.svg';

  /// File path: assets/icons/auth/ic_linkedin.svg
  String get icLinkedin => 'assets/icons/auth/ic_linkedin.svg';

  /// File path: assets/icons/auth/ic_login.svg
  String get icLogin => 'assets/icons/auth/ic_login.svg';

  /// File path: assets/icons/auth/linkedin.png
  AssetGenImage get linkedin =>
      const AssetGenImage('assets/icons/auth/linkedin.png');

  /// List of all assets
  List<dynamic> get values => [
        login,
        bgAuth,
        facebook,
        icAuth,
        icGithub,
        icGoogle,
        icLinkedin,
        icLogin,
        linkedin
      ];
}

class $AssetsIconsHomeGen {
  const $AssetsIconsHomeGen();

  /// File path: assets/icons/home/dummy_image.jpg
  AssetGenImage get dummyImage =>
      const AssetGenImage('assets/icons/home/dummy_image.jpg');

  /// File path: assets/icons/home/ic_home.svg
  String get icHome => 'assets/icons/home/ic_home.svg';

  /// File path: assets/icons/home/ic_homeAct.gif
  AssetGenImage get icHomeAct =>
      const AssetGenImage('assets/icons/home/ic_homeAct.gif');

  /// File path: assets/icons/home/ic_resume.png
  AssetGenImage get icResume =>
      const AssetGenImage('assets/icons/home/ic_resume.png');

  /// File path: assets/icons/home/ic_resumeAct.gif
  AssetGenImage get icResumeAct =>
      const AssetGenImage('assets/icons/home/ic_resumeAct.gif');

  /// File path: assets/icons/home/ic_saved.png
  AssetGenImage get icSaved =>
      const AssetGenImage('assets/icons/home/ic_saved.png');

  /// File path: assets/icons/home/ic_savedAct.gif
  AssetGenImage get icSavedAct =>
      const AssetGenImage('assets/icons/home/ic_savedAct.gif');

  /// File path: assets/icons/home/ic_template.png
  AssetGenImage get icTemplate =>
      const AssetGenImage('assets/icons/home/ic_template.png');

  /// File path: assets/icons/home/ic_templateAct.gif
  AssetGenImage get icTemplateAct =>
      const AssetGenImage('assets/icons/home/ic_templateAct.gif');

  /// File path: assets/icons/home/ic_top.png
  AssetGenImage get icTop =>
      const AssetGenImage('assets/icons/home/ic_top.png');

  /// File path: assets/icons/home/ic_topAct.gif
  AssetGenImage get icTopAct =>
      const AssetGenImage('assets/icons/home/ic_topAct.gif');

  /// List of all assets
  List<dynamic> get values => [
        dummyImage,
        icHome,
        icHomeAct,
        icResume,
        icResumeAct,
        icSaved,
        icSavedAct,
        icTemplate,
        icTemplateAct,
        icTop,
        icTopAct
      ];
}

class $AssetsIconsOnboardingGen {
  const $AssetsIconsOnboardingGen();

  /// File path: assets/icons/onboarding/ic_onboarding1.svg
  String get icOnboarding1 => 'assets/icons/onboarding/ic_onboarding1.svg';

  /// File path: assets/icons/onboarding/ic_onboarding2.svg
  String get icOnboarding2 => 'assets/icons/onboarding/ic_onboarding2.svg';

  /// File path: assets/icons/onboarding/ic_onboarding3.svg
  String get icOnboarding3 => 'assets/icons/onboarding/ic_onboarding3.svg';

  /// List of all assets
  List<String> get values => [icOnboarding1, icOnboarding2, icOnboarding3];
}

class Assets {
  Assets._();

  static const $AssetsSplashGen splash = $AssetsSplashGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
