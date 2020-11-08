import 'package:flutter/material.dart';
import 'reusable_icon.dart';

class volunteer_types extends StatefulWidget {
  @override
  _volunteer_typesState createState() => _volunteer_typesState();
}

class _volunteer_typesState extends State<volunteer_types> {
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
    return Padding(
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
              color: ruralarea_selected ? Colors.teal : Colors.grey[800],
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
    );
  }
}
