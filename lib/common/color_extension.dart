import 'package:flutter/material.dart';

// // class TColor {
//   static Color get primary => const Color(0xff5E00F5);
//   static Color get primary500 => const Color(0xff7722FF );
//   static Color get primary20 => const Color(0xff924EFF);
//   static Color get primary10 => const Color(0xffAD7BFF);
//   static Color get primary5 => const Color(0xffC9A7FF);
//   static Color get primary0 => const Color(0xffE4D3FF);

//   static Color get secondary => const Color(0xffFF7966);
//   static Color get secondary50 => const Color(0xffFFA699);
//   static Color get secondary0 => const Color(0xffFFD2CC);

//   static Color get secondaryG => const Color(0xff00FAD9);
//   static Color get secondaryG50 => const Color(0xff7DFFEE);

//   static Color get gray => const Color(0xff0E0E12);
//   static Color get gray80 => const Color(0xff1C1C23);
//   static Color get gray70 => const Color(0xff353542);
//   static Color get gray60 => const Color(0xff4E4E61);
//   static Color get gray50 => const Color(0xff666680);
//   static Color get gray40 => const Color(0xff83839C);
//   static Color get gray30 => const Color(0xffA2A2B5);
//   static Color get gray20 => const Color(0xffC1C1CD);
//   static Color get gray10 => const Color(0xffE0E0E6);

//   static Color get border => const Color(0xffCFCFFC);
//   static Color get primaryText => Colors.white;
//   static Color get secondaryText => gray60;

//   static Color get white => Colors.white;
// }

class TColor {
  // Primary Spotify green
  static Color get primary => const Color(0xff1DB954);
  static Color get primary500 => const Color(0xff1ED760);
  static Color get primary20 => const Color(0xff1FE874);
  static Color get primary10 => const Color(0xff0A5BB1);
  static Color get primary5 => const Color(0xff21FC9C);
  static Color get primary0 => const Color(0xff22FFB0);

  // Secondary colors
  static Color get secondary => const Color(0xff1DB954);
  static Color get secondary50 => const Color(0xf7D8840f);
  static Color get secondary0 => const Color(0xff22FFB0);

  // Additional accent colors
  static Color get secondaryG => const Color(0xcdb9271d);
  static Color get secondaryG50 => const Color(0xff50C8B9);

  // Gray scale for background and text
  static Color get gray => const Color(0xff121212); // Dark background
  static Color get gray80 => const Color(0xff181818);
  static Color get gray70 => const Color(0xff282828);
  static Color get gray60 => const Color(0xff383838);
  static Color get gray50 => const Color(0xff484848);
  static Color get gray40 => const Color(0xffB3B3B3); // Lighter text
  static Color get gray30 => const Color(0xffD9D9D9);
  static Color get gray20 => const Color(0xffEAEAEA);
  static Color get gray10 => const Color(0xffF1F1F1);

  // Border color - slightly lighter for separation
  static Color get border => const Color(0xff282828);
  static Color get primaryText => Colors.white; // Primary text color
  static Color get secondaryText => gray40; // Secondary text color

  static Color get white => Colors.white; // White color for text and icons
}
