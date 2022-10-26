import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:org_aero22/globals.dart' as global;

// ignore: camel_case_types
class eventHeadsPage extends StatefulWidget {
  const eventHeadsPage({Key? key}) : super(key: key);

  @override
  State<eventHeadsPage> createState() => _eventHeadsPageState();
}

// ignore: camel_case_types
class _eventHeadsPageState extends State<eventHeadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 1,
          childAspectRatio: 12 / 3.5,
          children: <Widget>[

            /////////////////////////////////////////////////////////////////////// SkyDive
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Lift Off!
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Lift Off!',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Sushan Shetty',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://6360298756");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Robo Soccer
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Robo Soccer',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Dion Dsouza',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://7975573950");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Tug of Bots
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Tug of Bots',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Rakshith K',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://7306231899");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Line Follower
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Line Follower',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Akshay Shet',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://9449384765");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Flight Simulation
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Blind Coding
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Man v/s Bug
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Water Rocket
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Grease Monkey
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Paper Presentation
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Sherlocked
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Mayhem!
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Pixel Perfect
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Hogathon
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Rockin' Riot
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Feel the Beat
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// in10sity
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Sing On
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.contactBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  //leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Text(
                    'Skydive',                                                    //Event name
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',                                          //Contact name
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");                                 //Contact number
                    },
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
