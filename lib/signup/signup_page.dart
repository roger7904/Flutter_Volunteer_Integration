import 'package:flutter/material.dart';
import 'signup_v_page1.dart';
import 'signup_o_page1.dart';
import 'package:volunteer_integration/constant.dart';

class signup_page extends StatelessWidget {
  static const String id = 'signup_page';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signup_page_scaffold(),
    );
  }
}

class signup_page_scaffold extends StatelessWidget {
  const signup_page_scaffold({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("Volunteer Integration")),
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
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.grey[700],
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 25, 40, 25),
                child: Text(
                  'Organizer',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => signup_o_page1(),
                    ),
                  );
                },
              ),
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
            Container(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.white)),
                color: Colors.grey[700],
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(40, 25, 40, 25),
                child: Text(
                  'Volunteer',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => signup_v_page1(),
                    ),
                  );
                },
              ),
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
