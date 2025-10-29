import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  // Large heading styles
  static TextStyle splashTitle = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 31.55,
    fontWeight: FontWeight.w700,
    height: 1.40,
    letterSpacing: -1.26,
  );

  static TextStyle headingText24 = GoogleFonts.openSans(
    color: AppColors.black,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.35,
    letterSpacing: -0.72,
  );
  // Reuse this for: readingBooksText, welcomeBackText

  static TextStyle subHeadingText20 = GoogleFonts.openSans(
    color: AppColors.black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.40,
    letterSpacing: -0.60,
  );
  // Reuse this for: specialOfferText

  static TextStyle mediumHeadingText18 = GoogleFonts.openSans(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.35,
    letterSpacing: -0.54,
  );
  // Reuse this for: topOfWeekText

  // Button and link styles
  static TextStyle buttonTextWhite16 = GoogleFonts.openSans(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.50,
    letterSpacing: 0.30,
  );
  // Reuse this for: continueButtonText

  static TextStyle buttonTextPurple16 = GoogleFonts.openSans(
    color: AppColors.purple,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.50,
    letterSpacing: 0.30,
  );
  // Reuse this for: signInText

  static TextStyle linkTextPurple14 = GoogleFonts.roboto(
    color: AppColors.purple,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.40,
    letterSpacing: 0.30,
  );
  // Reuse this for: seeAllText

  static TextStyle skipText = GoogleFonts.roboto(
    color: AppColors.purple,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.40,
  );

  // Body text styles
  static TextStyle gray16w400 = GoogleFonts.roboto(
    color: AppColors.lightGray,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.50,
  );
  // Reuse this for: discoveryText, signToAccountText

  static TextStyle bodyTextGray16Medium = GoogleFonts.roboto(
    color: AppColors.lightGray,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.50,
  );
  // Reuse this for: dontHaveAccountText

  static TextStyle bodyTextGray14 = GoogleFonts.roboto(
    color: AppColors.lightGray,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.40,
  );
  // Reuse this for: termsAgreementText

  static TextStyle bodyTextGray14Light = GoogleFonts.openSans(
    color: AppColors.lightGray,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.40,
  );
  // Reuse this for: lightGrayText14

  // Form and label styles
  static TextStyle labelText14 = GoogleFonts.roboto(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.40,
  );
  // Reuse this for: emailLabelText

  static TextStyle regularText14 = GoogleFonts.roboto(
    color: AppColors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.40,
  );
  // Reuse this for: discountText

  static const TextStyle signInWithGoogleText = TextStyle(
    color: AppColors.black,
    fontSize: 14,
    fontFamily: 'Circular Std',
    fontWeight: FontWeight.w500,
    height: 1.71,
  );

  static const TextStyle forgotPasswordText = TextStyle(
    color: AppColors.purple,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    height: 1.40,
  );

  static TextStyle customButtonText = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Open Sans',
    fontWeight: FontWeight.w700,
    height: 1.50,
    letterSpacing: 0.30,
  );

  static const TextStyle grayText14w600 = TextStyle(
    color: AppColors.lightGray,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w600,
    height: 1.40,
  );

  static TextStyle authorNameText = GoogleFonts.roboto(
    color: AppColors.black, // Using AppColors instead of Color(0xFF121212)
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.50,
  );

  // Aliases for backward compatibility and semantic naming
  static TextStyle get readingBooksText => headingText24;
  static TextStyle get welcomeBackText => headingText24;
  static TextStyle get specialOfferText => subHeadingText20;
  static TextStyle get topOfWeekText => mediumHeadingText18;
  static TextStyle get continueButtonText => buttonTextWhite16;
  static TextStyle get signInText => buttonTextPurple16;
  static TextStyle get seeAllText => linkTextPurple14;
  static TextStyle get discoveryText => gray16w400;
  static TextStyle get signToAccountText => gray16w400;
  static TextStyle get dontHaveAccountText => bodyTextGray16Medium;
  static TextStyle get termsAgreementText => bodyTextGray14;
  static TextStyle get lightGrayText14 => bodyTextGray14Light;
  static TextStyle get emailLabelText => labelText14;
  static TextStyle get discountText => regularText14;
}
