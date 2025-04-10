import 'package:flutter/material.dart';

class SignupPageTwo extends StatefulWidget {
  const SignupPageTwo({super.key});

  @override
  State<SignupPageTwo> createState() => _SignupPageTwoState();
}

class _SignupPageTwoState extends State<SignupPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("SIGN UP PAGE TWO", style: TextStyle(fontSize: 36),)],
        ),
      ),
    );
  }
}
