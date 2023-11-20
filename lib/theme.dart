import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double defaultMargin = 30.0;

// Common Color
const Color primaryColor = Color(0xff027BFE);
const Color primary2Color = Color.fromARGB(255, 168, 210, 255);
const Color secondaryColor = Color(0xff1088A3);
const Color alertColor = Color(0xffDB3547);
const Color successColor = Color(0xff26A941);
const Color warnColor = Color(0xffFFC10A);

// Background Color
const Color bg1Color = Color(0xffE3E3E3);
const Color bg2Color = Color(0xffffffff);
const Color bg3Color = Color.fromARGB(255, 22, 13, 82);
const Color bg4Color = Color(0xff252836);
const Color bg5Color = Color(0xff2B2844);
const Color bg6Color = Color(0xffECEDEF);

// Text Color
const Color primaryTextColor = Color(0xff000000);
const Color secondaryTextColor = Color(0xffffffff);
const Color subtitleColor = Color(0xff504F5E);
const Color secondaryBottomBarColor = Color(0xffABAFD1);

// Etc. Color
const Color transparentColor = Colors.transparent;
const Color blackColor = Color(0xff2E2E2E);
const Color divierColor = Color(0xff2B2939);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: primaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: secondaryTextColor,
);

TextStyle successTextStyle = GoogleFonts.poppins(
  color: successColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: subtitleColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: primaryColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: blackColor,
);

TextStyle alertTextStyle = GoogleFonts.poppins(
  color: alertColor,
);

const FontWeight light = FontWeight.w300;
const FontWeight regular = FontWeight.w400;
const FontWeight medium = FontWeight.w500;
const FontWeight semibold = FontWeight.w600;
const FontWeight bold = FontWeight.w700;
