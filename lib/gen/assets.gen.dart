/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/heart.svg
  String get heart => 'assets/icons/heart.svg';

  /// List of all assets
  List<String> get values => [heart];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/gaalxy-note-7.svg
  String get gaalxyNote7 => 'assets/images/gaalxy-note-7.svg';

  /// File path: assets/images/galaxy-s7.svg
  String get galaxyS7 => 'assets/images/galaxy-s7.svg';

  /// File path: assets/images/huawei-p10.svg
  String get huaweiP10 => 'assets/images/huawei-p10.svg';

  /// File path: assets/images/img_1.png
  AssetGenImage get img1 => const AssetGenImage('assets/images/img_1.png');

  /// File path: assets/images/img_2.png
  AssetGenImage get img2 => const AssetGenImage('assets/images/img_2.png');

  /// File path: assets/images/img_3.png
  AssetGenImage get img3 => const AssetGenImage('assets/images/img_3.png');

  /// File path: assets/images/img_4.png
  AssetGenImage get img4 => const AssetGenImage('assets/images/img_4.png');

  /// File path: assets/images/iphone-7-plus.svg
  String get iphone7Plus => 'assets/images/iphone-7-plus.svg';

  /// File path: assets/images/lg-g5.svg
  String get lgG5 => 'assets/images/lg-g5.svg';

  /// File path: assets/images/profile.png
  AssetGenImage get profile => const AssetGenImage('assets/images/profile.png');

  /// File path: assets/images/xiaomi-mi-6.svg
  String get xiaomiMi6 => 'assets/images/xiaomi-mi-6.svg';

  /// List of all assets
  List<dynamic> get values => [
        gaalxyNote7,
        galaxyS7,
        huaweiP10,
        img1,
        img2,
        img3,
        img4,
        iphone7Plus,
        lgG5,
        profile,
        xiaomiMi6
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

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
