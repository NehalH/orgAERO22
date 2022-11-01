import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:org_aero22/globals.dart' as global;

import '../qr_scanner.dart';

// ignore: camel_case_types
class dayOnePage extends StatefulWidget {
  const dayOnePage({Key? key}) : super(key: key);

  @override
  State<dayOnePage> createState() => _dayOnePageState();
}

// ignore: camel_case_types
class _dayOnePageState extends State<dayOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Scrollable(
          viewportBuilder:
              (BuildContext context, ViewportOffset position) {
            return ListView.builder(
                itemCount: 5,//dates[current].length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height:200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(global.cardRadius)),
                      border: Border.all(
                        color: global.orange,
                        width: 2,
                      ),
                      image: const DecorationImage(
                        image: NetworkImage('https://aerophilia.in/events/technical/CODM1.webp'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(global.cardRadius),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: global.cardBackground,
                          borderRadius: BorderRadius.circular(global.cardRadius),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: ListTile(
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
                          trailing: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                splashColor: global.orange,
                                highlightColor: Colors.white,
                                child: Icon(
                                  Icons.groups_rounded,
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
                              const SizedBox(width: 15,),
                              InkWell(
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
            );
          },
        ),
      /*GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 1,
          childAspectRatio: 12 / 3.5,
          children: <Widget>[

            /////////////////////////////////////////////////////////////////////// Drone Race
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
                    'Lift Off!',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Drone Racing',                                            //Event type
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
                      global.whichEventYa= "LIFT OFF!";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Robo Soccer
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
                    'Robo Soccer',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Robot Football',                                            //Event type
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
                      global.whichEventYa= "ROBO SOCCER";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Code Studio
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
                    'Man v/s Bug',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Coding',                                            //Event type
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
                      global.whichEventYa= "MAN vs BUG";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Sherlocked
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
                    'Sherlocked',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Detective Game',                                            //Event type
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
                      global.whichEventYa= "SHERLOCKED";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Group Dance
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
                    'IN10SITY',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Group Dance',                                            //Event type
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
                      global.whichEventYa= "IN10SITY";                            //Collection key
                      Navigator.pushNamed(
                          context,
                          '/home/Events/BouncerQRScanner'
                      );
                    },
                  ),
                ),
              ),
            ),
            /////////////////////////////////////////////////////////////////////// Western Music
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
                    'Sing On',                                                    //Event name
                    style: TextStyle(
                      fontSize: 18,
                      color: global.orange,
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Western Music',                                            //Event type
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
                      global.whichEventYa= "SING ON";                            //Collection key
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
            Container(
              height:200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(global.cardRadius)),
                border: Border.all(
                  color: global.orange,
                  width: 2,
                ),
                image: const DecorationImage(
                  image: NetworkImage('https://aerophilia.in/events/technical/CODM1.webp'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Card(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(global.cardRadius),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: global.cardBackground,
                    borderRadius: BorderRadius.circular(global.cardRadius),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: ListTile(
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
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          splashColor: global.orange,
                          highlightColor: Colors.white,
                          child: Icon(
                            Icons.groups_rounded,
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
                        const SizedBox(width: 15,),
                        InkWell(
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
                      ],
                    ),
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
        )*/
    );
  }
}
