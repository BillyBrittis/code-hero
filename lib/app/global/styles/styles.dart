import 'package:flutter/material.dart';

// FONT STYLES
// Heading/Titles
const fontStyleH1Desktop = TextStyle(
  color: Color(0xFFD42026),
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w900,
  fontSize: 27,
);
const fontStyleH1DesktopUnderline = TextStyle(
  color: Color(0xFFD42026),
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w900,
  fontSize: 27,
  decoration: TextDecoration.underline,
);
const fontStyleH2Desktop = TextStyle(
  color: Color(0xFFD42026),
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w300,
  fontSize: 27,
);
const fontStyleH3Desktop = TextStyle(
  color: Color(0xFFD42026),
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w300,
  fontSize: 16,
);
final fontStyleH4 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 34,
);
final fontStyleH5 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 24,
);
final fontStyleH6 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontSize: 20,
);

// Subtitles
final fontStyleSubtitle1 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 16,
);
final fontStyleSubtitle2 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontSize: 14,
);
final fontStyleSubtitle3 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  wordSpacing: 0.04,
  fontSize: 12,
);
final fontStyleSubtitle4 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[500],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.01,
  fontSize: 16,
);

final fontStyleSubtitle5 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.1,
  fontSize: 16,
);

final fontStyleSubtitle6 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[500],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.01,
  fontSize: 16,
);

// Bodies
final fontStyleBody1 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 16,
);
final fontStyleBody2 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 14,
);
final fontStyleBody3 = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontSize: 22,
);
final fontStyleBody4 = TextStyle(
  color: colorGrey[600],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w400,
  fontSize: 22,
);
final fontStyleCaption = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 12,
);
final fontStyleOverline = TextStyle(
  backgroundColor: Colors.transparent,
  color: colorGrey[900],
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 10,
  decoration: TextDecoration.overline,
);

final fontStyleUnderline = TextStyle(
    color: colorGrey[700],
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    decoration: TextDecoration.underline,
    letterSpacing: 0.04);
// Buttons
const fontStyleButton = TextStyle(
  backgroundColor: Colors.transparent,
  color: Colors.white,
  fontFamily: 'Roboto',
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.normal,
  fontSize: 14,
  letterSpacing: 1.25,
);

const fontStyleTitleSmall = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontSize: 10,
  letterSpacing: 1.5,
  fontFamily: 'Roboto',
);

const fontStyleTitleLarge = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w500,
  fontSize: 30,
  fontFamily: 'Roboto',
  color: Color(0xFF6D7278),
);

const fontStyleListView = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.01,
  color: Color(0xFF6D7278),
);

const fontStyleTitle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 15,
  fontStyle: FontStyle.normal,
  letterSpacing: 0.1,
);

const MaterialColor colorPrimarySwatch = MaterialColor(0xFFEF3844, {
  50: Color(0xFFFCEAE3),
  100: Color(0xFFE55A64),
  200: Color(0xFFE55A64),
  300: Color(0xFFE55A64),
  400: Color(0xFFEF3844),
  500: Color(0xFFEF3844),
  600: Color(0xFFEF3844),
  700: Color(0xFFC12F38),
  800: Color(0xFFC12F38),
  900: Color(0xFFC12F38),
});

const MaterialColor colorGrey = MaterialColor(0xFF4D4D4D, {
  50: Color(0xFFF2F2F2),
  100: Color(0xFFF2F2F2),
  200: Color(0xFFD5D5D5),
  300: Color(0xFFD5D5D5),
  400: Color(0xFF939598),
  500: Color(0xFF939598),
  600: Color(0xFF4D4D4D),
  700: Color(0xFF4D4D4D),
  800: Color(0xFF343434),
  900: Color(0xFF343434),
});