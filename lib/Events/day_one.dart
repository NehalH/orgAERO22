import 'package:flutter/material.dart';
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
        backgroundColor: global.background,
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
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/images/Aerophilia-logo mark-White.png', height: 45,),
                  title: Text(
                    'Skydive',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Aeromodelling',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(Icons.qr_code_scanner_rounded, size: 28, color: global.orange,),
                    onTap: () {
                      global.whichEventYa= "skydive";                            //\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
                      Navigator.pushNamed(context, '/home/Events/BouncerQRScanner');
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/images/Aerophilia-logo mark-White.png', height: 45,),
                  title: Text(
                    'Need for Speed',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Drone Race',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(Icons.qr_code_scanner_rounded, size: 28, color: global.orange,),
                    onTap: () {
                      Navigator.pushNamed(context, '/home/QRScanner');
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/images/Aerophilia-logo mark-White.png', height: 45,),
                  title: Text(
                    'Man vs Bug',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Coding',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(Icons.qr_code_scanner_rounded, size: 28, color: global.orange,),
                    onTap: () {
                      Navigator.pushNamed(context, '/home/QRScanner');
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/images/Aerophilia-logo mark-White.png', height: 45,),
                  title: Text(
                    'Russian Roullete',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Kids',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(Icons.qr_code_scanner_rounded, size: 28, color: global.orange,),
                    onTap: () {
                      Navigator.pushNamed(context, '/home/QRScanner');
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/images/Aerophilia-logo mark-White.png', height: 45,),
                  title: Text(
                    'Skydive',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Aeromodelling',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(Icons.qr_code_scanner_rounded, size: 28, color: global.orange,),
                    onTap: () {
                      Navigator.pushNamed(context, '/home/QRScanner');
                    },
                  ),
                ),
              ),
            ),
            ///////////////////////////////////////////////////////////////////////
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.eventsBorder,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: global.black,
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  leading: Image.asset('assets/images/Aerophilia-logo mark-White.png', height: 45,),
                  title: Text(
                    'Skydive',
                    style: TextStyle(fontSize: 18, color: global.orange,),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                      'Aeromodelling',
                      style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                  trailing: InkWell(
                    splashColor: global.orange,
                    highlightColor: Colors.white,
                    child: Icon(Icons.qr_code_scanner_rounded, size: 28, color: global.orange,),
                    onTap: () {
                      Navigator.pushNamed(context, '/home/QRScanner');
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
