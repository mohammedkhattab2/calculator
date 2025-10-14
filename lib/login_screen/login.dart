import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("login"), backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "home");
              },
              child: Text("open home"),
            ),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, "register");
            }, child: Text("open register ")),
          ],
        ),
      ),
    );
  }
}
