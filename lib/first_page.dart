import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:volunteer_integration/components/rounded_button.dart';
import 'package:volunteer_integration/login/login_page.dart';
import 'package:volunteer_integration/signup/signup_page.dart';

class first_page extends StatefulWidget {
  static const String id = 'first_page';

  @override
  _first_pageState createState() => _first_pageState();
}

class _first_pageState extends State<first_page>
    with SingleTickerProviderStateMixin {
  // AnimationController controller;
  // Animation animation;

  @override
  void initState() {
    super.initState();

    // controller =
    //     AnimationController(duration: Duration(seconds: 1), vsync: this);
    // animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
    //     .animate(controller);
    // controller.forward();
    // controller.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/logo.jpg'),
              ),
              SizedBox(
                width: 250.0,
                height: 100.0,
                child: WavyAnimatedTextKit(
                  textStyle: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                  text: [
                    "Volunteer Integration",
                  ],
                  isRepeatingAnimation: true,
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              RoundedButton(
                title: 'Log In',
                colour: Colors.teal[600],
                onPressed: () {
                  Navigator.pushNamed(context, login_page.id);
                },
              ),
              RoundedButton(
                title: 'Register',
                colour: Colors.teal[200],
                onPressed: () {
                  Navigator.pushNamed(context, signup_page.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
