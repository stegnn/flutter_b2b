import 'package:flutter/material.dart';

import 'text_theme.dart';

class TextThemeDark implements ITextTheme {
  @override
  late TextTheme data;
  @override
  final Color? primaryColor;
  @override
  TextStyle? bodyText1;

  @override
  TextStyle? bodyText2;

  @override
  TextStyle? headline1;

  @override
  TextStyle? headline3 =
      const TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  TextStyle? headline4;

  @override
  TextStyle? headline5;

  @override
  TextStyle? headline6 =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

  @override
  TextStyle? subtitle1 = const TextStyle(fontSize: 16.0);

  @override
  TextStyle? subtitle2;

  @override
  String? fontFamily;

  TextThemeDark(this.primaryColor) {
    data = TextTheme(
      titleLarge: headline6,
      titleMedium: subtitle1,
    ).apply(bodyColor: primaryColor);
  }

  @override
  TextStyle? headline2;
}
