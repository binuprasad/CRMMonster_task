import 'package:auth_screen/view/screens/sign_up_screen1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'view/screens/sign_up_screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  SignUpScreen2(),
    );
  }
}
