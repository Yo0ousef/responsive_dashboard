import 'package:flutter/cupertino.dart';

class SizeConfig {
  static const double tablet = 750 ;
  static const double desktop = 1300;

  //TODO: don't use this configuration for desktop layout using a variable will stop context form rebuilding the ui
  // static late double height, width;
  // static init(BuildContext context){
  //   height = MediaQuery.of(context).size.height;
  //   width = MediaQuery.of(context).size.width;
  // }
}