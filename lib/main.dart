import 'package:flutter/material.dart';

import 'package:untitled/present/authentication_screen/authentication_screen.dart';
import 'package:untitled/present/code_input_screen/code_input_screen.dart';
import 'package:untitled/present/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Authentication(),
    );
  }
}
