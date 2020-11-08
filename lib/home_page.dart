import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/login_page.dart';
import 'package:volunteer_integration/signup/signup_page.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  String dropdownValue_area;
  String dropdownValue_charity;
  String selectTime;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectTime = 'Time';
    dropdownValue_area = 'Area';
    dropdownValue_charity = 'Charity';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 35.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 0.5,
                          offset: Offset(0, 1.5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValue_area,
                        iconEnabledColor: Colors.grey,
                        style: TextStyle(color: Colors.grey),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue_area = newValue;
                          });
                        },
                        items: <String>[
                          'Area',
                          'Taipei',
                          'New Taipei',
                          'Taoyuan',
                          'Taichung',
                          'Tainan',
                          'Kaohsiung',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
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
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 0.5,
                          offset: Offset(0, 1.5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                showTitleActions: true,
                                minTime: DateTime(2019, 1, 1),
                                maxTime: DateTime.now(),
                                theme: DatePickerTheme(
                                    headerColor: Colors.teal,
                                    backgroundColor: Colors.white,
                                    itemStyle: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                    cancelStyle: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                    doneStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16)), onConfirm: (date) {
                              setState(() {
                                selectTime =
                                    DateFormat('yyyy-MM-dd').format(date);
                              });
                              ;
                            },
                                currentTime: DateTime.now(),
                                locale: LocaleType.en);
                          },
                          child: Text(
                            selectTime,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0.5,
                          blurRadius: 0.5,
                          offset: Offset(0, 1.5), // changes position of shadow
                        ),
                      ],
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.grey,
                        value: dropdownValue_charity,
                        style: TextStyle(color: Colors.grey),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue_charity = newValue;
                          });
                        },
                        items: <String>[
                          'Charity',
                          'Option one',
                          'Option two',
                          'Option three',
                          'Option four',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
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
