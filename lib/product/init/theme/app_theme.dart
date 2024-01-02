import 'package:flutter/material.dart';

import 'colors/color_themes.dart';
import 'text/text_theme.dart';
import 'text/text_theme_dark.dart';
import 'text/text_theme_light.dart';

abstract class ITheme {
  ITextTheme get TextTheme;

  IColors get Colors;
}

abstract class ThemeManager {
  static ThemeData craeteTheme(ITheme theme) => ThemeData(
        fontFamily: theme.TextTheme.fontFamily,
        textTheme: theme.TextTheme.data,
        cardColor: theme.Colors.colorScheme?.onSecondary,
        brightness: theme.Colors.colorScheme?.brightness,
        canvasColor: Colors.red,
        cardTheme: CardTheme(shadowColor: theme.Colors.cardShadowColor),
        progressIndicatorTheme:
            ProgressIndicatorThemeData(color: theme.Colors.colors.bitterSweet),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: theme.Colors.colorScheme?.onSecondary)),
        tabBarTheme: TabBarTheme(
          labelPadding: EdgeInsets.zero,
          indicator: const BoxDecoration(),
          labelColor: theme.Colors.tabbarSelectedColor,
          unselectedLabelColor: theme.Colors.tabbarNormalColor,
        ),
        iconTheme: IconThemeData(color: theme.Colors.colors.darkGrey, size: 24),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: theme.TextTheme.subtitle2,
        ),
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: theme.Colors.cursorColor),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: theme.Colors.colors.white,
            backgroundColor: theme.Colors.colors.mediumGreyBold),
        appBarTheme: AppBarTheme(
          color: theme.Colors.appBarColor,
          elevation: 0,
        ),
        bottomAppBarTheme:
            BottomAppBarTheme(color: theme.Colors.bottomAppBarColor),
        scaffoldBackgroundColor: theme.Colors.scaffoldBackgroundColor,
        colorScheme: theme.Colors.colorScheme,
      );
}

class AppThemeDark extends ITheme {
  late final ITextTheme textTheme;

  AppThemeDark() {
    textTheme = TextThemeDark(colors.colors.mediumGrey);
  }

  @override
  IColors get colors => DarkColors();

  @override
  // TODO: implement Colors
  IColors get Colors => throw UnimplementedError();

  @override
  // TODO: implement TextTheme
  ITextTheme get TextTheme => throw UnimplementedError();
}

class AppThemeLight extends ITheme {
  @override
  late final ITextTheme textTheme;

  AppThemeLight() {
    textTheme = TextThemeLight(colors.textColor);
  }

  @override
  IColors get colors => LightColors();

  @override
  // TODO: implement Colors
  IColors get Colors => throw UnimplementedError();

  @override
  // TODO: implement TextTheme
  ITextTheme get TextTheme => throw UnimplementedError();
}
