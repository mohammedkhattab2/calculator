import 'package:calculator/calculator/calculator_button.dart';
import 'package:calculator/calculator/calculator_style.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  static const String routName = "calculator";

  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String result = "";
  String lhs = "";
  String savedOperation = "";
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
                  result,
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
                  onPress: onDigitclick,
                ),
                CalculatorButton(
                  digit: "C",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.veryLightGray,
                  onPress: onDigitclick,
                ),
                CalculatorButton(
                  digit: "/",
                  backGroundColor: CalculatorColors.darkBlue,
                  textColor: CalculatorColors.white,
                  onPress: onDigitclick,
                ),
                CalculatorButton(
                  digit: "*",
                  backGroundColor: CalculatorColors.darkBlue,
                  textColor: CalculatorColors.white,
                  onPress: onOperationClick,
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
                  onPress: onDigitclick,
                ),
                CalculatorButton(
                  digit: "8",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.lightblue,
                  onPress: onDigitclick,
                ),
                CalculatorButton(
                  digit: "9",
                  backGroundColor: CalculatorColors.gray,
                  textColor: CalculatorColors.lightblue,
                  onPress: onDigitclick,
                ),
                CalculatorButton(
                  digit: "-",
                  backGroundColor: CalculatorColors.darkBlue,
                  textColor: CalculatorColors.white,
                  onPress: onOperationClick,
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
                              onPress: onDigitclick,
                            ),
                            CalculatorButton(
                              digit: "5",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                              onPress: onDigitclick,
                            ),
                            CalculatorButton(
                              digit: "6",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                              onPress: onDigitclick,
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
                              onPress: onDigitclick,
                            ),
                            CalculatorButton(
                              digit: "2",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                              onPress: onDigitclick,
                            ),
                            CalculatorButton(
                              digit: "3",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                              onPress: onDigitclick,
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
                              onPress: onDigitclick,
                            ),
                            CalculatorButton(
                              digit: ".",
                              backGroundColor: CalculatorColors.gray,
                              textColor: CalculatorColors.lightblue,
                              onPress: onDigitclick,
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
                        onPress: onOperationClick,
                      ),
                      CalculatorButton(
                        digit: "=",
                        backGroundColor: CalculatorColors.lightblue,
                        textColor: CalculatorColors.white,
                        onPress: onequalklick,
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

  void onDigitclick(String digit) {
    if (result.contains(".") && digit == ".") return;
    result += digit;
    setState(() {});
  }

  void onOperationClick(String clickedOperator) {
    if (savedOperation.isEmpty) {
      lhs = result;
      savedOperation = clickedOperator;
      result = "";
      setState(() {});
    } else {
      if (result.isEmpty)return;
      lhs = calculate(lhs, savedOperation, result);
      savedOperation = clickedOperator;
      result = "";
      setState(() {});
    }
    print("result is $result, lhs is $lhs, saved operation is $savedOperation");
  }

  void onequalklick(_) {
    if (result.isEmpty) return;
    result = calculate(lhs, savedOperation, result);
    lhs = "";
    savedOperation = "";
    setState(() {});
  }

  String calculate(String lhs, String operator, String rhs) {
    double n1 = double.parse(lhs);
    double n2 = double.parse(rhs);
    switch (operator) {
      case "+":
        return (n1 + n2).toString();
      case "-":
        return (n1 - n2).toString();
      case "*":
        return (n1 * n2).toString();
      case "/":
        return (n1 / n2).toString();
      default:
        return "0";
    }
  }
}
