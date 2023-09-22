import 'package:flutter/material.dart';
import 'package:app_state/test2_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test2Page(),
    );
  }
}