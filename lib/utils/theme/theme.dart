import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'custom_themes/text_theme.dart';
class TAppTheme{
  TAppTheme._();

  static ThemeData LightTheme = ThemeData(
    useMaterial3: true,
    focusColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    splashFactory: NoSplash.splashFactory,    //fontFamily: 'LibreBaskerville',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    scaffoldBackgroundColor: TColors.primaryBackground,
    textTheme: TTextTheme.lightTextTheme,
    // chipTheme: TChipTheme.lightChipTheme,
    // appBarTheme: TAppBarTheme.lightAppBarTheme,
    // checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    // bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    // inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,


  );
  static ThemeData DarkTheme = ThemeData(
    focusColor: Colors.transparent,
    useMaterial3: true,
    fontFamily: 'LibreBaskerville',
    brightness: Brightness.dark,
    primaryColor: TColors.primaryBackground,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    // chipTheme: TChipTheme.darkChipTheme,
    // appBarTheme: TAppBarTheme.darkAppBarTheme,
    // checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    // bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    // outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    // inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    // elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,



  );
}