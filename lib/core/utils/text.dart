import 'package:flutter/material.dart';
import 'package:sign_up_app/core/constants/text_style.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool centered;
  final bool multitext;
  final TextOverflow overflow;
  final Color? color;
  final int? maxlines;
  final double? height;
  final TextAlign? textAlign;

  /// this is heading 1, font size = 26, fontweight = 700.
  AppText.heading1(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = heading1.copyWith(color: color),
        super(key: key);

  /// this is heading 2, font size = 24, fontweight = 700.
  AppText.heading2(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = heading2.copyWith(color: color),
        super(key: key);

  /// this is heading 3, font size = 22, fontweight = 700.
  AppText.heading3(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = heading3.copyWith(color: color),
        super(key: key);

  /// this is heading 4, font size = 20, fontweight = 700.
  AppText.heading4(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = heading4.copyWith(color: color),
        super(key: key);

  /// this is heading 5, font size = 18, fontweight = 700.
  AppText.heading5(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = heading5.copyWith(color: color),
        super(key: key);

  /// this is heading 6, font size = 16, fontweight = 700.
  AppText.heading6(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = heading6.copyWith(color: color),
        super(key: key);

    /// this is body 1, font size = 14, fontweight = 600.
  AppText.body1(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = body1.copyWith(color: color),
        super(key: key);

    /// this is body 2, font size = 12, fontweight = 600.
  AppText.body2(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = body2.copyWith(color: color),
        super(key: key);

  /// this is small, font size = 10, fontweight = 500.
  AppText.small(
    this.text, {
    Key? key,
    this.overflow = TextOverflow.ellipsis,
    this.color,
    this.centered = false,
    this.multitext = false,
    this.textAlign,
    this.maxlines,
    this.height,
  })  : style = small.copyWith(color: color),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        height: height,
      ),
      overflow: overflow,
      textAlign: centered ? TextAlign.center : textAlign ?? TextAlign.left,
      maxLines: multitext || maxlines != null ? maxlines ?? 999999 : 1,
    );
  }
}
