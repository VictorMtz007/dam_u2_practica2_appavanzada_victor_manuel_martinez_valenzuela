import 'package:flutter/material.dart';

import 'practica2.dart';

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
      title: 'Practica 2',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Practica2(),
    );
  }
}