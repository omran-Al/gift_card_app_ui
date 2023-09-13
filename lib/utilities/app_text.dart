import 'package:flutter/material.dart';
import 'package:gift_card_app_ui/gen/fonts.gen.dart';

import '../gen/colors.gen.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  // final double? height;
  // final double? letterSpacing;
  final double fontSize;

  AppText.title(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    // this.height,
    // this.letterSpacing,
    this.fontSize = 25,
  }) : super(data,
            key: key,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontFamily: FontFamily.playfair,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ));

  AppText.large(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.bold,
    // this.height,
    // this.letterSpacing,
    this.fontSize = 20,
  }) : super(data,
            key: key,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: color,
              fontFamily: FontFamily.playfair,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ));

  AppText.medium(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.w600,
    // this.height,
    // this.letterSpacing,
    this.fontSize = 15,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: color,
              fontFamily: FontFamily.merriweather,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ));

  AppText.small(
    String data, {
    Key? key,
    this.color = ColorName.primaryColor,
    this.fontWeight = FontWeight.normal,
    // this.height,
    // this.letterSpacing,
    this.fontSize = 12,
  }) : super(data,
            key: key,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: color,
              fontFamily: FontFamily.merriweather,
              fontWeight: fontWeight,
              fontSize: fontSize,
            ));
}
