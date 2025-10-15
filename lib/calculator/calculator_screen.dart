import 'package:calculator/calculator/calculator_button.dart';
import 'package:calculator/calculator/calculator_style.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  static const String routName = "calculator";

  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CalculatorColors.black,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "12.454",
                  textAlign: TextAlign.end,
                  style: CalculatorStyles.white48medium,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "AC",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.veryLightGray,
                ),
                CalculatorButton(
                  digit: "C",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.veryLightGray,
                ),
                CalculatorButton(
                  digit: "/",
                  backGroundColor: CalculatorColors.darkBlue,
                  textColor: CalculatorColors.white,
                ),
                CalculatorButton(
                  digit: "*",
                  backGroundColor: CalculatorColors.darkBlue,
                  textColor: CalculatorColors.white,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalculatorButton(
                  digit: "7",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.lightblue,
                ),
                CalculatorButton(
                  digit: "8",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.lightblue,
                ),
                CalculatorButton(
                  digit: "9",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.lightblue,
                ),
                CalculatorButton(
                  digit: "-",
                  backGroundColor: CalculatorColors.darkBlue,
                  textColor: CalculatorColors.white,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CalculatorButton(
                              digit: "4",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                            CalculatorButton(
                              digit: "5",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                            CalculatorButton(
                              digit: "6",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CalculatorButton(
                              digit: "1",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                            CalculatorButton(
                              digit: "2",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                            CalculatorButton(
                              digit: "3",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CalculatorButton(
                              digit: "0",
                              flex: 2,
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                            CalculatorButton(
                              digit: ".",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CalculatorButton(
                        digit: "+",
                        backGroundColor: CalculatorColors.darkBlue,
                        textColor: CalculatorColors.white,
                      ),
                      CalculatorButton(
                        digit: "=",
                        backGroundColor: CalculatorColors.lightblue,
                        textColor: CalculatorColors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
