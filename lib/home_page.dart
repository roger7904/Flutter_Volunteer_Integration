import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/login_page.dart';
import 'package:volunteer_integration/signup/signup_page.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';
import 'package:volunteer_integration/volunteer_sort.dart';
import 'reusable_icon.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool hospital_selected;
  bool children_selected;
  bool old_selected;
  bool ruralarea_selected;
  bool normal_selected;
  bool blood_selected;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    hospital_selected = false;
    children_selected = false;
    old_selected = false;
    ruralarea_selected = false;
    normal_selected = false;
    blood_selected = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            volunteer_sort(),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                alignment: Alignment(-1.0, 0.0),
                child: Text(
                  'Volunteer types',
                  style: font_18_grey,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  reusable_icon(
                    onPress: () {
                      setState(() {
                        if (hospital_selected) {
                          hospital_selected = false;
                        } else {
                          hospital_selected = true;
                        }
                      });
                    },
                    icondata: Icons.local_hospital,
                    colour: hospital_selected ? Colors.teal : Colors.grey[800],
                    text_content: 'Hospital',
                    text_style: TextStyle(
                      color: hospital_selected ? Colors.teal : Colors.grey[800],
                    ),
                  ),
                  reusable_icon(
                    onPress: () {
                      setState(() {
                        if (children_selected) {
                          children_selected = false;
                        } else {
                          children_selected = true;
                        }
                      });
                    },
                    icondata: Icons.child_care,
                    colour: children_selected ? Colors.teal : Colors.grey[800],
                    text_content: 'Children',
                    text_style: TextStyle(
                      color: children_selected ? Colors.teal : Colors.grey[800],
                    ),
                  ),
                  reusable_icon(
                    onPress: () {
                      setState(() {
                        if (old_selected) {
                          old_selected = false;
                        } else {
                          old_selected = true;
                        }
                      });
                    },
                    icondata: Icons.wheelchair_pickup,
                    colour: old_selected ? Colors.teal : Colors.grey[800],
                    text_content: 'Old',
                    text_style: TextStyle(
                      color: old_selected ? Colors.teal : Colors.grey[800],
                    ),
                  ),
                  reusable_icon(
                    onPress: () {
                      setState(() {
                        if (ruralarea_selected) {
                          ruralarea_selected = false;
                        } else {
                          ruralarea_selected = true;
                        }
                      });
                    },
                    icondata: Icons.landscape_outlined,
                    colour: ruralarea_selected ? Colors.teal : Colors.grey[800],
                    text_content: 'Rural Area',
                    text_style: TextStyle(
                      color:
                          ruralarea_selected ? Colors.teal : Colors.grey[800],
                    ),
                  ),
                  reusable_icon(
                    onPress: () {
                      setState(() {
                        if (normal_selected) {
                          normal_selected = false;
                        } else {
                          normal_selected = true;
                        }
                      });
                    },
                    icondata: Icons.fact_check_outlined,
                    colour: normal_selected ? Colors.teal : Colors.grey[800],
                    text_content: 'Normal',
                    text_style: TextStyle(
                      color: normal_selected ? Colors.teal : Colors.grey[800],
                    ),
                  ),
                  reusable_icon(
                    onPress: () {
                      setState(() {
                        if (blood_selected) {
                          blood_selected = false;
                        } else {
                          blood_selected = true;
                        }
                      });
                    },
                    icondata: Icons.favorite,
                    colour: blood_selected ? Colors.teal : Colors.grey[800],
                    text_content: 'Blood',
                    text_style: TextStyle(
                      color: blood_selected ? Colors.teal : Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Container(
                alignment: Alignment(-1.0, 0.0),
                child: Text(
                  'Activities',
                  style: font_18_grey,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image(
                          image: AssetImage('images/activity.jpg'),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('Event'),
                          Text('Event Time'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Event Address'),
                          Text('Event Organizer'),
                        ],
                      ),
                      Text('Event Simple Description'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        size: 20.0,
                      ),
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 20.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
