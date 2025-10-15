import 'package:flutter/material.dart';

abstract final class CalculatorColors {
  static Color white = Colors.white;
  static Color gray = Color(0xff005DB2);
  static Color darkBlue = Color(0xff303136);
  static Color lightGray = Color(0xff616161);
  static Color veryLightGray = Color(0xffA5A5A5);
  static Color black = Color(0xff17181A);
}

abstract final class CalculatorStyles {
  static TextStyle white48medium = 
  TextStyle(color: CalculatorColors.white , fontWeight: FontWeight.w500 , fontSize: 48, );
  
  static TextStyle darkBlue32medium =
  TextStyle(color: CalculatorColors.darkBlue , fontWeight: FontWeight.w500 , fontSize: 32, );
  static TextStyle veryLightGray32medium =
  TextStyle(color: CalculatorColors.veryLightGray , fontWeight: FontWeight.w500 , fontSize: 32, );
 
}
