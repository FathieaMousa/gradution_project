import 'package:flutter/material.dart';

class TColors{
  TColors._();

  // -- Colors start with 0xFF - 000000
  //   ----------------
  // App Basic Colors
  static const Color primary = Color(0xFF819067);
  static const Color primary40 = Color(0x66808F67);
  static const Color primary70 = Color(0xD7F8F67);
  static const Color primaryBackground = Color(0xFFFAF7F3);





  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(colors: [

  ]);
  // Text Colors
  static const Color headersColor = Color(0xFF819067);
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;
  static const Color textFieldsColor = Color(0x66808F67);


  // Background Colors
  static const Color light = Color(0xFFFAF7F3);
  static const Color dark = Color(0xFF272727);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static  Color darkContainer = TColors.white.withOpacity(0.1);

  //Buttons Colors
  static const Color buttonPrimary = Color(0xFF819067);
  //static const Color buttonDisabled = Color(0xFFFAF7F3);

// Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and Validation Colors
  static const Color error   = Color(0xFFD32F2F);
  static const Color success = Color(0xFF38E8C3);
  static const Color warning = Color(0xFFF57C00);
  static const Color info    = Color(0xFF1976D2);

  // Neutral Shades
  static const Color blackF      = Color(0xFF000000);
  static const Color black      = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey   = Color(0xFF939393);
  static const Color grey       = Color(0xFFE0E0E0);
  static const Color softGrey    = Color(0xFFF4F4F4);
  static const Color lightGrey   = Color(0xFFF9F9F9);
  static const Color white       = Color(0xFFFFFFFF);

}