import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  static const routName = "calculator";

  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("calculator"), backgroundColor: Colors.blue),
      body: Center(
        child: ElevatedButton(onPressed: () {}, child: Text("0")),
      ),
    );
  }
}
