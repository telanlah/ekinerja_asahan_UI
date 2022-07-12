import 'package:ekinerja/constants/color_constants.dart';
import 'package:ekinerja/model/model_title.dart';
import 'package:ekinerja/screens/home/home_screen.dart';
import 'package:ekinerja/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const loginScreen(),
    );
  }
}
