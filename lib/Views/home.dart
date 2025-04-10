import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                flex: 7,
                child: Container(
                    color: Colors.orange.shade800,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Welcome to",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.brightness_1_outlined, color: Colors.white, size: 32,),
                            const SizedBox(width: 3,),
                            RichText(
                                text: const TextSpan(children: [
                              TextSpan(
                                  text: "NAYA",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: "PAY",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold))
                            ])),
                          ],
                        )
                      ],
                    )))),
            Expanded(
                flex: 3,
                child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, bottom: 8),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("login");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 70, 197, 130),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  minimumSize: const Size(double.infinity, 50),
                                ),
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, top: 8),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("signup");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 70, 197, 130),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4)),
                                  minimumSize: const Size(double.infinity, 50),
                                ),
                                child: const Text(
                                  "REGISTER",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                )),
                          ),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}
