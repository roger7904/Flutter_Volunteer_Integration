import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/signup/signup_o_page2.dart';

class signup_o_page1 extends StatelessWidget {
  static const String id = 'signup_o_page1';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text("Sign up"),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/logo.jpg'),
                ),
                SizedBox(
                  height: 10.0,
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
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.red,
                              )),
                          TextSpan(
                            text: 'Organizer Name',
                            style: font_18_grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: TextFormField(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text(
                      'Registration Number',
                      style: font_18_grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: TextFormField(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.red,
                              )),
                          TextSpan(
                            text: 'Account',
                            style: font_18_grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: TextFormField(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.red,
                              )),
                          TextSpan(
                            text: 'Password',
                            style: font_18_grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: TextFormField(),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text.rich(
                      TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: '*',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.red,
                              )),
                          TextSpan(
                            text: 'Email',
                            style: font_18_grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: TextFormField(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.grey)),
                    color: Colors.white,
                    textColor: Colors.grey,
                    padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, signup_o_page2.id);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
