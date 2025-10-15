import 'package:calculator/calculator/calculator_screen.dart';
import 'package:calculator/home_screen.dart';
import 'package:calculator/login_screen/login.dart';
import 'package:calculator/register_screen/register.dart';
import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      title: "calculator App",
      initialRoute: CalculatorScreen.routName,
      routes: {
        "login" : (_) => LoginScreen(),
        "register" : (_) => RegisterScreen() , 
        "home": (_) => Homescreen() ,
        CalculatorScreen.routName : (_) => CalculatorScreen()

      },
    ));
  }
}
