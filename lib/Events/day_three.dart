import 'package:flutter/material.dart';
import 'package:org_aero22/globals.dart' as global;

import '../qr_scanner.dart';

// ignore: camel_case_types
class dayThreePage extends StatefulWidget {
  const dayThreePage({Key? key}) : super(key: key);

  @override
  State<dayThreePage> createState() => _dayThreePageState();
}

// ignore: camel_case_types
class _dayThreePageState extends State<dayThreePage> {
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
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: global.cardBackground,
                  border: Border.all(
                    color: global.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Aerophilia-logo mark-White.png',
                    height: 45,
                  ),
                  title: Text(
                    'SkyDive',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Aeromodelling',                                            //Event type
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white38
                      ),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      size: 28,
                      color: global.orange,
                    ),
                    onTap: () {
                      global.whichEventYa= "SKY DIVE";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Line Follower
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: global.cardBackground,
                  border: Border.all(
                    color: global.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Aerophilia-logo mark-White.png',
                    height: 45,
                  ),
                  title: Text(
                    'Line Follower',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Liner Follower Robot',                                            //Event type
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white38
                      ),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      size: 28,
                      color: global.orange,
                    ),
                    onTap: () {
                      global.whichEventYa= "LINE FOLLOWER";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Water Rocket
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: global.cardBackground,
                  border: Border.all(
                    color: global.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Aerophilia-logo mark-White.png',
                    height: 45,
                  ),
                  title: Text(
                    'Water Rocket',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Water Rocket',                                            //Event type
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white38
                      ),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      size: 28,
                      color: global.orange,
                    ),
                    onTap: () {
                      global.whichEventYa= "WATER ROCKET";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Valo
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: global.cardBackground,
                  border: Border.all(
                    color: global.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Aerophilia-logo mark-White.png',
                    height: 45,
                  ),
                  title: Text(
                    'Mayhem! - Valo',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Valorant',                                            //Event type
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white38
                      ),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      size: 28,
                      color: global.orange,
                    ),
                    onTap: () {
                      global.whichEventYa= "MAYHEM!-Valo";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// CODM
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: global.cardBackground,
                  border: Border.all(
                    color: global.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/Aerophilia-logo mark-White.png',
                    height: 45,
                  ),
                  title: Text(
                    'Mayhem! - CODM',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Call Of Duty Mobile',                                            //Event type
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white38
                      ),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(
                      Icons.qr_code_scanner_rounded,
                      size: 28,
                      color: global.orange,
                    ),
                    onTap: () {
                      global.whichEventYa= "MAYHEM!-CODM";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),                                                 // BlankBox



          ],
        ));
  }
}