import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final myBorder = OutlineInputBorder(borderRadius: BorderRadius.circular(4));

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange.shade800,

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
              text: const TextSpan(children: [
            TextSpan(
                text: "NAYA",
                style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            TextSpan(
                text: "PAY",
                style: TextStyle(color: Colors.white70, fontSize: 24, fontWeight: FontWeight.bold))
          ])),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "CANCEL",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
        ],
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),

              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: "Login ",
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 28, 
                      fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "Step 1/2",
                    style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold))
              ])),

              const SizedBox(
                height: 30,
              ),

              const Text(
                "NAYAPAY ID",
                style: TextStyle(color: Colors.black, fontSize: 18,),
              ),

              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your NayaPay ID",
                  hintStyle: const TextStyle(color: Colors.grey),
                  suffixText: "@nayapay",
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: myBorder,
                  focusedBorder: myBorder,
                ),
              ),

              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text(
                    "FORGOT NAYAPAY ID",
                    style: TextStyle(color: Colors.green, fontSize: 16),
                  )),

              const SizedBox(height: 10,),

              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "By continuing, you accept our ",
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                TextSpan(
                    text: "Terms and Privacy Policy",
                    style: const TextStyle(
                      color: Colors.red, fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle the tap
                        if (kDebugMode) {
                          print("Terms & Policy Clicked");
                        }
                      })
              ])),
              
              const SizedBox(height: 20,),

              ElevatedButton(onPressed: () {
                // Navigator.of(context).pushReplacement(
                //   MaterialPageRoute(builder: (context) => const SignupPage(),));
              Navigator.of(context).pushNamed("loginTwo");
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text("NEXT", style: TextStyle(color: Colors.white, fontSize: 18),))
            ],
          ),
        ),
      ),
    );
  }
}
