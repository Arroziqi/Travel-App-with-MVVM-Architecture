import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// margin & rad
double defaultMargin = 24.0;
double defaultRadius = 17.0;

// colors
Color kPrimaryColor = const Color(0xff5C40CC);
Color kSecondaryColor = const Color(0xffE0D9FF);
Color kThirdColor = const Color(0xffDBD7EC);
Color kBlackColor = const Color(0xff1F1449);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGreyColor = const Color(0xff9698A9);
Color kLightGreyColor = const Color(0xffEBECF1);
Color kGreenColor = const Color(0xff0EC3AE);
Color kRedColor = const Color(0xffEB70A5);
Color kBackgroundColor = const Color(0xffFAFAFA);
Color kTransparent = Colors.transparent;

// text style
TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);
TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);

// font weights
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;