import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("available hotels "),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff024383),
            ),
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),

            child: Text(
              "available hotels",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(child: Image.asset("assets/alexandrea.png")),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff024383),
                      ),
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(16),

                      child: Text(
                        "alexandrea",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset("assets/sharm.png"),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff024383),
                      ),
                      margin: EdgeInsets.all(16),
                      padding: EdgeInsets.all(16),

                      child: Text(
                        "Sharm Elsheikh",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
