import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/home_page.dart';
import 'package:volunteer_integration/signup/signup_v_page2.dart';
import 'main_page.dart';

enum User_identity {
  organizer,
  volunteer,
}

class login_page extends StatefulWidget {
  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  User_identity selected_identity;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    setState(
      () {
        selected_identity = User_identity.organizer;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text("Login")),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.min,
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
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected_identity = User_identity.organizer;
                        });
                      },
                      child: Text(
                        'Organizer',
                        style: selected_identity == User_identity.organizer
                            ? font_20_orangeAccent
                            : font_20_grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Text(
                        '|',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.grey[300],
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selected_identity = User_identity.volunteer;
                        });
                      },
                      child: Text(
                        'Volunteer',
                        style: selected_identity == User_identity.volunteer
                            ? font_20_orangeAccent
                            : font_20_grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: Text(
                      'Account',
                      style: font_18_grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(60.0, 0, 60.0, 0),
                  child: TextFormField(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                    child: Text(
                      'Password',
                      style: font_18_grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(60.0, 0, 60.0, 0),
                  child: TextFormField(),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                    textColor: Colors.grey,
                    padding: EdgeInsets.fromLTRB(60, 10, 60, 10),
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => main_page(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
