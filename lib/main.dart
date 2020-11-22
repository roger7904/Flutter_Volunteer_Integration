import 'package:flutter/material.dart';
import 'package:volunteer_integration/home/home_page.dart';
import 'package:volunteer_integration/login/login_page.dart';
import 'package:volunteer_integration/main_page.dart';
import 'package:volunteer_integration/signup/signup_o_page1.dart';
import 'package:volunteer_integration/signup/signup_o_page2.dart';
import 'package:volunteer_integration/signup/signup_o_page3.dart';
import 'package:volunteer_integration/signup/signup_page.dart';
import 'package:volunteer_integration/signup/signup_v_page1.dart';
import 'package:volunteer_integration/signup/signup_v_page2.dart';
import 'package:volunteer_integration/signup/signup_v_page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        initialRoute: signup_page.id,
        routes: {
          home_page.id: (context) => home_page(),
          login_page.id: (context) => login_page(),
          main_page.id: (context) => main_page(),
          signup_o_page1.id: (context) => signup_o_page1(),
          signup_o_page2.id: (context) => signup_o_page2(),
          signup_o_page3.id: (context) => signup_o_page3(),
          signup_v_page1.id: (context) => signup_v_page1(),
          signup_v_page2.id: (context) => signup_v_page2(),
          signup_v_page3.id: (context) => signup_v_page3(),
          signup_page.id: (context) => signup_page(),
        },
      );
  }
}

//commit test2
