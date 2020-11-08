import 'package:flutter/material.dart';
import 'package:volunteer_integration/signup/signup_page.dart';
import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: main_page(),
    );
  }
}
