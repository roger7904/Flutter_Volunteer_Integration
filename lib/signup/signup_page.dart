import 'package:flutter/material.dart';
import 'signup_v_page1.dart';
import 'signup_o_page1.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/components/rounded_button.dart';

class signup_page extends StatelessWidget {
  static const String id = 'signup_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text("Volunteer Integration"),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Volunteer Integration Platform',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 60.0,
            ),
            Text(
              'Choose your character...',
              style: font_18_black,
            ),
            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              title: 'Organizer',
              colour: Colors.teal,
              onPressed: () {
                Navigator.pushNamed(context, signup_o_page1.id);
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'or',
              style: font_18_black,
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              title: 'Volunteer',
              colour: Colors.teal,
              onPressed: () {
                Navigator.pushNamed(context, signup_v_page1.id);
              },
            ),
            SizedBox(
              height: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
