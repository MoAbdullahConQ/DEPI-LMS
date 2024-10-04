import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static final TextStyle textStyle12 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: kGreen1Color,
  );

  static final TextStyle textStyle14 = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle textStyle15 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle textStyle18 = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle textStyle20 = GoogleFonts.poppins(
    fontSize: 20,
    color: kGreen1Color,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle textStyle25 = GoogleFonts.poppins(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: kGreen1Color,
  );
  static final TextStyle textStyle32 = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: kGreen1Color,
  );

  static final TextStyle textStyle45 = GoogleFonts.poppins(
    fontSize: 45,
    fontWeight: FontWeight.w600,
    color: kSplashColor,
  );
  // static const textStyle30 = TextStyle(
  //     fontSize: 30, fontWeight: FontWeight.normal, fontFamily: kGtSectraFine);
  // static const textStyle14 = TextStyle(
  //   fontSize: 14,
  //   fontWeight: FontWeight.normal,
  // );
}
