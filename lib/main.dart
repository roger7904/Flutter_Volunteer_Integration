import 'package:flutter/material.dart';
import 'package:volunteer_integration/main_page.dart';
import 'package:volunteer_integration/signup/signup_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signup_page(),
    );
  }
}

//commit test2
