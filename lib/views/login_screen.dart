// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Welcome to Login page"),
      ),
    );
  }
}
