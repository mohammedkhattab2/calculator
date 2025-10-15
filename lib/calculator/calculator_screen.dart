import 'package:calculator/calculator/calculator_style.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  static const String routName = "calculator";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CalculatorColors.black,
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Text("12.454", style: CalculatorStyles.white48medium )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
                Expanded(child: ElevatedButton(onPressed: (){}, child: Text("7"))),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
