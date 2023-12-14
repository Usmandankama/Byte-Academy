import 'package:byteacademy/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:byteacademy/constants/colors.dart' as color;

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Image.asset('./assets/images/1-trans.png'),
              ElevatedButton(
                style: ButtonStyle(
                  padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
                  backgroundColor: MaterialStatePropertyAll(color.primaryColor),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AuthPage(),
                    ),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: color.secondaryfontColor,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
