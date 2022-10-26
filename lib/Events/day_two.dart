import 'package:flutter/material.dart';
import 'package:org_aero22/globals.dart' as global;

import '../qr_scanner.dart';

// ignore: camel_case_types
class dayTwoPage extends StatefulWidget {
  const dayTwoPage({Key? key}) : super(key: key);

  @override
  State<dayTwoPage> createState() => _dayTwoPageState();
}

// ignore: camel_case_types
class _dayTwoPageState extends State<dayTwoPage> {
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
            /////////////////////////////////////////////////////////////////////// Tug of Bots
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
                    'Tug of Bots',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Robots\' Tug of War',                                            //Event type
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
                      global.whichEventYa= "TUG OF BOTS";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Blind Code
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
                    'Blind Coding',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Coding but blindfolded',                                            //Event type
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
                      global.whichEventYa= "BLIND CODING";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Grease Monkey
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
                    'Grease Monkey',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Mechanical',                                            //Event type
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
                      global.whichEventYa= "GREASE MONKEY";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Paper Presentation
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
                    'Paper Presentation',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Paper Presentation',                                            //Event type
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
                      global.whichEventYa= "PAPER PRESENTATION";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Battle of bands
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
                    'Rockin\' Riot',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Battle of Bands',                                            //Event type
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
                      global.whichEventYa= "ROCKIN RIOT";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Solo Dance
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
                    'Feel The Beat',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Solo Dance',                                            //Event type
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
                      global.whichEventYa= "FEEL THE BEAT";                            //Collection key
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
