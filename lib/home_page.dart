import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/login_page.dart';
import 'package:volunteer_integration/signup/signup_page.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Area {
  final int id;
  final String content;

  Area({
    this.id,
    this.content,
  });
}

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  static List<Area> _areas = [
    Area(id: 1, content: "Taipei"),
    Area(id: 2, content: "New Taipei"),
    Area(id: 4, content: "Taoyuan"),
    Area(id: 7, content: "Taichung"),
    Area(id: 8, content: "Tainan"),
    Area(id: 7, content: "Kaohsiung"),
  ];
  final _items =
      _areas.map((area) => MultiSelectItem<Area>(area, area.content)).toList();
  List<Area> _selectedAreas = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  String dropdownValue_area;
  String dropdownValue_time;
  String dropdownValue_period;
  String dropdownValue_charity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue_area = 'Area';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Container(
                //   height: 35.0,
                //   alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(5.0),
                //     color: Colors.white,
                //     border: Border.all(
                //       color: Colors.grey,
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.5),
                //         spreadRadius: 0.5,
                //         blurRadius: 0.5,
                //         offset: Offset(0, 3), // changes position of shadow
                //       ),
                //     ],
                //   ),
                //   child: DropdownButtonHideUnderline(
                //     child: DropdownButton<String>(
                //       value: dropdownValue_area,
                //       style: TextStyle(color: Colors.black),
                //       onChanged: (String newValue) {
                //         setState(() {
                //           dropdownValue_area = newValue;
                //         });
                //       },
                //       items: <String>[
                //         'Area',
                //         'Taipei',
                //         'New Taipei',
                //         'sadas',
                //         'adas',
                //       ].map<DropdownMenuItem<String>>((String value) {
                //         return DropdownMenuItem<String>(
                //           value: value,
                //           child: Text(value),
                //         );
                //       }).toList(),
                //     ),
                //   ),
                // ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      MultiSelectBottomSheetField(
                        initialChildSize: 0.4,
                        listType: MultiSelectListType.CHIP,
                        searchable: true,
                        buttonText: Text("Area"),
                        title: Text("Areas"),
                        items: _items,
                        onConfirm: (values) {
                          _selectedAreas = values;
                        },
                        chipDisplay: MultiSelectChipDisplay(
                          onTap: (value) {
                            setState(() {
                              _selectedAreas.remove(value);
                            });
                          },
                        ),
                      ),
                      _selectedAreas == null || _selectedAreas.isEmpty
                          ? Container(
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "None selected",
                                style: TextStyle(color: Colors.black54),
                              ))
                          : Container(),
                    ],
                  ),
                ),
                Container(
                  height: 35.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    // border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue_area,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue_area = newValue;
                        });
                      },
                      items: <String>[
                        'Area',
                        'Taipei',
                        'New Taipei',
                        'sadas',
                        'adas',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    // border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue_area,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue_area = newValue;
                        });
                      },
                      items: <String>[
                        'Area',
                        'Taipei',
                        'New Taipei',
                        'sadas',
                        'adas',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Container(
                  height: 35.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    // border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: dropdownValue_area,
                      style: TextStyle(color: Colors.black),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue_area = newValue;
                        });
                      },
                      items: <String>[
                        'Area',
                        'Taipei',
                        'New Taipei',
                        'sadas',
                        'adas',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
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
            Row(),
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
            Column(),
          ],
        ),
      ),
    );
  }
}
