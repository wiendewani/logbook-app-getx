import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PaletteColor.dart';

class TypographyStyle {

  /* HEADING */
  static TextStyle heading = GoogleFonts.kanit(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: PaletteColor.grey80,
  );

  static TextStyle title = GoogleFonts.kanit(
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: PaletteColor.grey80,
  );

  static TextStyle subtitle0 = GoogleFonts.kanit(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: PaletteColor.white,
  );

  static TextStyle subtitle1 = GoogleFonts.kanit(
    fontSize: 18,
    fontWeight: FontWeight.w300,
    color: PaletteColor.grey80,
  );

  static TextStyle subtitle2 = GoogleFonts.kanit(
    fontSize: 14,
    fontWeight: FontWeight.w300,
    color: PaletteColor.grey80,
  );

  static TextStyle paragraph = GoogleFonts.kanit(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: PaletteColor.grey80,
  );

  static TextStyle caption = GoogleFonts.kanit(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: PaletteColor.grey80,
  );

  static TextStyle caption2 = GoogleFonts.kanit(
    fontSize: 12,
    fontWeight: FontWeight.w300,
    color: PaletteColor.grey80,
  );

  static TextStyle mini = GoogleFonts.kanit(
    fontSize: 10,
    color: PaletteColor.grey80,
    fontWeight: FontWeight.w300,
  );
}
