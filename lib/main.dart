import 'package:flutter/material.dart';
import 'package:bab3p2/detail_screen.dart';
import 'package:bab3p2/models/turis.dart';
import 'package:bab3p2/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const MainScreen(),
    );
  }
}

