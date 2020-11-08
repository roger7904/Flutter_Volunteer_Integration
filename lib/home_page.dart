import 'package:flutter/material.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/volunteer_sort.dart';
import 'package:volunteer_integration/volunteer_types.dart';
import 'reusable_activity.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  List<Widget> list = <Widget>[
    reusable_activity(),
    reusable_activity(),
    reusable_activity(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
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
          volunteer_types(),
          SizedBox(
            height: 30.0,
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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  reusable_activity(),
                  reusable_activity(),
                  reusable_activity(),
                  reusable_activity(),
                  reusable_activity(),
                  reusable_activity(),
                  reusable_activity(),
                  reusable_activity(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
