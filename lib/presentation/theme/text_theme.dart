import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme extends TextTheme {

  const CustomTextTheme();

  @override
  TextStyle? get labelSmall =>
      GoogleFonts.poppins().copyWith(fontSize: 12, fontWeight: FontWeight.w500);
}
