// ignore_for_file: use_build_context_synchronously
import 'package:byteacademy/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart' as colors;
import '../helper/errorMessage.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

final TextEditingController usernameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPwController = TextEditingController();

class _RegisterState extends State<Register> {
  void registerUser() async {
    // show loading cycle
    showDialog(
      context: context,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    // make sure passwords match

    if (passwordController.text != confirmPwController.text) {
      Navigator.pop(context);
      displayMessageToUser('Passwords do not match', context);
    }
    // try to create user
    try {
      UserCredential? userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    } on FirebaseAuthException catch (e) {
      displayMessageToUser(e.code, context);
    }
  }

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
              const SizedBox(height: 20),
              Text(
                'register',
                style: TextStyle(
                  fontSize: 50,
                  color: colors.secondaryfontColor,
                ),
              ),
              const SizedBox(height: 59),
              Container(
                height: 450,
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
                    const SizedBox(height: 10),
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
                            hintText: 'username',
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
                        controller: emailController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'email',
                            prefixIcon: Icon(Icons.mail_rounded)),
                        obscureText: true,
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
                            hintText: 'password',
                            prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
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
                        controller: confirmPwController,
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'confirm password',
                            prefixIcon: Icon(Icons.lock)),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                                horizontal: 100, vertical: 20)),
                        backgroundColor:
                            MaterialStatePropertyAll(colors.primaryColor),
                      ),
                      onPressed: registerUser,
                      child: Text(
                        'register',
                        style: TextStyle(
                          color: colors.secondaryfontColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                      child: const Text('Already have an Account?Login'),
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
