import 'package:flutter/material.dart';

import 'pages/startup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Byte Academy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(
            0, 191, 99, 1.0)),
        useMaterial3: true,
      ),
      home:const  StartupPage(),
    );
  }
}