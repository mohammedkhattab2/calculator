import 'package:calculator/calculator/calculator_style.dart';
import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final int flex;
  final Color backGroundColor;
  final Color textColor;
  final String digit;
  const CalculatorButton({
    super.key,
    this.flex = 1,
    this.backGroundColor = CalculatorColors.gray,
    this.textColor = CalculatorColors.darkBlue,
    required this.digit,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex : flex ,
      child: Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
        
          ),
          onPressed: () {},
          child: Text(
            digit,
            style: CalculatorStyles.darkBlue32medium.copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
