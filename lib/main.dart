import 'package:lab2_130/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 2 Cuisine',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.mitrTextTheme(),
      ),
      home: MyHomePage(),
    );
  }
}
