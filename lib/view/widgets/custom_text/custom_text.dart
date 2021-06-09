import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final bool isNormal;
  final double? fontSize;
  final double? maxFontSize;
  final double? height;
  final TextStyle? textStyle;
  final int? maxLines;
  final FontStyle? fontStyle;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final Locale? locale;
  final List<Shadow>? shadows;
  final String? fontFamily;
  final EdgeInsets? padding;
  final Color? textColor;
  final FontWeight? fontWeight;

  const CustomText(
      {required this.text,
      this.fontSize,
      this.textStyle,
        required this.isNormal,
      this.shadows,
      this.maxLines,
      this.textAlign,
      this.maxFontSize,
      this.textDirection,
      this.fontStyle,
      this.height,
      this.locale,
      this.textColor,
      this.padding,
      this.fontFamily,
      this.fontWeight});



  @override
  Widget build(BuildContext context) {
    double maxSize = 55;
    if (maxFontSize != null && fontSize != null) {
      if (fontSize! >= maxFontSize!) maxSize = (maxFontSize! + 2);
    }
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: isNormal? Text(
        text,

        style: textStyle ??
            Theme.of(context).textTheme.headline6!.copyWith(
                fontFamily: fontFamily ?? '',
                fontSize: fontSize??21,
                fontWeight: fontWeight ?? FontWeight.w400,
                height: height,
                color: textColor ?? Theme.of(context).scaffoldBackgroundColor,
                shadows: shadows ?? []),
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines ?? 3,
        softWrap: true,
        textAlign: textAlign ?? TextAlign.left,
        textDirection: textDirection ?? TextDirection.ltr,
        locale: locale,
      ):
      AutoSizeText(
        text,

        minFontSize: fontSize ?? 10,
        maxFontSize: maxSize,

        // presetFontSizes: [40,32,18],
        style: textStyle ??
            Theme.of(context).textTheme.headline6!.copyWith(
                fontFamily: fontFamily ?? '',
                fontWeight: fontWeight ?? FontWeight.w400,
                height: height,
                color: textColor ?? Theme.of(context).scaffoldBackgroundColor,
                shadows: shadows ?? []),
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines ?? 3,
        softWrap: true,
        textAlign: textAlign ?? TextAlign.left,
        textDirection: textDirection ?? TextDirection.ltr,
        locale: locale,
      ),
    );
  }
}
