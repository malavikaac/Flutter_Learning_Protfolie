import 'package:flutter/material.dart';
import 'package:pen/Screens/mainScreen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


