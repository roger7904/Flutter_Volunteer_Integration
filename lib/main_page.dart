import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:volunteer_integration/constant.dart';
import 'package:volunteer_integration/login_page.dart';
import 'package:volunteer_integration/signup/signup_page.dart';
import 'home_page.dart';

class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
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
    return MaterialApp(
      color: Colors.teal,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text("Volunteer Integration"),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: PopupMenuButton<String>(
                  onSelected: (String value) {
                    switch (value) {
                      case 'Logout':
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => login_page(),
                          ),
                        );
                    }
                  },
                  itemBuilder: (BuildContext context) {
                    return {'Logout'}.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              home_page(),
              Container(
                child: Center(
                  child: Text("Favorites"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Messages"),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Profile"),
                ),
              ),
            ],
          ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                child: Text("Home"),
              ),
              Tab(
                icon: Icon(Icons.favorite),
                child: Text("Favorites"),
              ),
              Tab(
                icon: Icon(Icons.message),
                child: Text("Messages"),
              ),
              Tab(
                icon: Icon(Icons.account_circle),
                child: Text("Profile"),
              )
            ],
            labelColor: Colors.teal,
            unselectedLabelColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.teal,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
    ;
  }
}
