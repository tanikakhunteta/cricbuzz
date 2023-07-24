import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart';

class AppTextStyle {
  static monteserratmedium18B(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 51.7,
        fontWeight: FontWeight.w500,
        color:AppColors.blackColor);
  }
  static monteserratbold18B(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 40.7,
        fontWeight: FontWeight.w700,
        color:AppColors.blackColor);
  }
  static monteserratregular18B(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 70,
        fontWeight: FontWeight.w400,
        color:AppColors.blackColor);
  }
  static monteserratmedium19B(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 60,
        fontWeight: FontWeight.w500,
        color:AppColors.blackColor);
  }
    static monteserratbold18R(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 40.7,
        fontWeight: FontWeight.w700,
        color:AppColors.redColor);
    }
    static britannicbold18W(BuildContext context) {
    return GoogleFonts.aldrich(
        fontSize: MediaQuery.of(context).size.height / 30.7,
        fontWeight: FontWeight.w700,
        color:AppColors.whiteColor);
    }
     static britannicbold18B(BuildContext context) {
    return GoogleFonts.aldrich(
        fontSize: MediaQuery.of(context).size.height / 30.7,
        fontWeight: FontWeight.w700,
        color:AppColors.blackColor);
    }
    static monteserratregular18W(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 75,
        fontWeight: FontWeight.w400,
        color:AppColors.whiteColor);
  }
  static monteserratmedium18W(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 51.7,
        fontWeight: FontWeight.w500,
        color:AppColors.whiteColor);
  }
  static monteserratSemiBold20B(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: MediaQuery.of(context).size.height / 45.7,
        fontWeight: FontWeight.w600,
        color:AppColors.blackColor);
  }
  }