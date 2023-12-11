import 'package:byteacademy/pages/home_page.dart';
import 'package:byteacademy/pages/register.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart' as colors;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

final TextEditingController usernameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

void login() {
  // show loading cycle

  // make sure passwords match

  // try to log user in
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: colors.primaryColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              const SizedBox(height: 120),
              Text(
                'login',
                style: TextStyle(
                  fontSize: 50,
                  color: colors.secondaryfontColor,
                ),
              ),
              const SizedBox(height: 59),
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
                    // const
                    const SizedBox(height: 50),
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
                      child: TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            prefixIcon: Icon(Icons.person)),
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
                      child: TextField(
                        controller: passwordController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                                horizontal: 100, vertical: 20)),
                        backgroundColor:
                            MaterialStatePropertyAll(colors.primaryColor),
                      ),
                      onPressed: login,
                      child: Text(
                        'login',
                        style: TextStyle(
                          color: colors.secondaryfontColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Register(),
                          ),
                        );
                      },
                      child: const Text('Dont have an Account?Register'),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom))
            ],
          ),
        ),
      ),
    );
  }
}
