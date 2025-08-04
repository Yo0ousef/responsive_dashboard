

// used abstract class because we don't need to create an object from it
/// TODO: use figma design to get all the styles in the application
/// TODO: in case the styles are not organized in the figma design you can use _Style Organizer_ plugin form the resources tap in Figma.
library;

import 'package:flutter/material.dart';



abstract class AppStyles{
  static const TextStyle styleRegular12 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: 12,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleRegular14 = TextStyle(
    color: Color(0xFFAAAAAA),
    fontSize: 14,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 18,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleRegular16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle styleMedium16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle styleBold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 16,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static const TextStyle styleMedium20 = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 20,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 20,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static const TextStyle styleSemiBold24 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 24,
    fontFamily:'Montserrat',
    fontWeight: FontWeight.w600,
  );

}