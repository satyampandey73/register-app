import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_app/signup_screen.dart';

void main() {
  runApp(const MyApp());
}
// satayam 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF493AD5),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SignupScreen(),
    );
  }
}
