import 'package:depi_lms/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
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
