import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("register"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed:(){
            Navigator.pop(context, "home");
          },
           child: Text("Back togin")),
           ElevatedButton(
            onPressed: (){},
            child: Text("open Home"))
        ],
      ),
    );
  }
}
