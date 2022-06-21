import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text(
            "Hello There",
            style: TextStyle(color: Colors.blueAccent, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
