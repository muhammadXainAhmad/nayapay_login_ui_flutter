import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    final myBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(4));
    return Scaffold(
      appBar: AppBar(
        title: const Text("__________________"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Let's start with your name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "FIRST NAME",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter first name",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: myBorder,
                  focusedBorder: myBorder,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "LAST NAME",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter last name",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: myBorder,
                  focusedBorder: myBorder,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "EMAIL",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter email",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: myBorder,
                  focusedBorder: myBorder,
                ),
              ),
              const SizedBox(
                height: 270,
              ),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "By continuing, you accept our ",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                TextSpan(
                    text: "Terms and Privacy Policy",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle the tap
                        if (kDebugMode) {
                          print("Terms & Policy Clicked");
                        }
                      })
              ])),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(
                    //   MaterialPageRoute(builder: (context) => const SignupPage(),));
                    Navigator.of(context).pushNamed("signupTwo");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
