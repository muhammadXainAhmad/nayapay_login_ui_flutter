import 'package:flutter/material.dart';

class LoginPageTwo extends StatefulWidget {
  const LoginPageTwo({super.key});

  @override
  State<LoginPageTwo> createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("LOGIN PAGE TWO", style: TextStyle(fontSize: 36))],
        ),
      ),
    );
  }
}
