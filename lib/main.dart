import 'package:flutter/material.dart';


import 'screens/login.dart';
import 'package:dio/dio.dart';
Future<void> main() async {
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body:LoginPage(),
      ),

    );

  }
}