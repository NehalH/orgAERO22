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
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'Skydive',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'Need for speed',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'Man vs Bug',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'Tug of Bots',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'Blind coding',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'Hospitality In-charge',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'College Coordinator',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
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
                    'Crowd Control In-charge',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Nehal Hosalikar',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                    onTap: () {
                      launch("tel://8217785009");
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
          ],
        ));
  }
}
