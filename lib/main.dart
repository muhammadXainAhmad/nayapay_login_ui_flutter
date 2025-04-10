import 'package:flutter/material.dart';
import 'package:nayapay_login_ui/Views/home.dart';
import 'package:nayapay_login_ui/Views/login.dart';
import 'package:nayapay_login_ui/Views/login_two.dart';
import 'package:nayapay_login_ui/Views/signup.dart';
import 'package:nayapay_login_ui/Views/signup_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "homepage", 

      // SCREEN ROUTING
      routes: { 
        "login": (context) => const LoginPage(),
        "loginTwo": (context) => const LoginPageTwo(),
        "signup": (context) => const SignupPage(),
        "signupTwo": (context) => const SignupPageTwo(),
      },

      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}