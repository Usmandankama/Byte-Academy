import 'package:flutter/material.dart';
import '../constants/colors.dart' as colors;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child:
                Image.asset('./assets/images/2-trans.png', fit: BoxFit.cover),
          ),
          Container(
            height: 342,
            padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const Text('login',style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Monospace',
                ),),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      strokeAlign: 1,
                      width: 1.2,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person)
                    ),
                    autofocus: false,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 50,
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                    border: Border.all(
                      strokeAlign: 1,
                      width: 1.2,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Passowrd',
                      prefixIcon: Icon(Icons.lock)
                    ),
                    autofocus: false,
                  ),
                ),
                const Text('')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
