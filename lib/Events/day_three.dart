import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      body: Scrollable(
        viewportBuilder:
            (BuildContext context, ViewportOffset position) {
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(20,30,20,30),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(global.cardRadius)),
                        border: Border.all(
                          color: global.orange,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(global.dayThreePoster[index]),                //Poster
                          fit: BoxFit.cover,
                          opacity: 200,
                        )
                    ),
                    child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(global.cardRadius),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(global.cardRadius),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: ListTile(
                          title: Text(
                            global.dayThreeEvents[index],                                                    //Event name
                            style: TextStyle(
                              fontSize: 18,
                              color: global.orange,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.fromLTRB(2.0,8.0,0,0),
                            child: Text(
                              global.dayThreeVenue[index],                                            //Event venue
                              style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white54
                              ),
                            ),
                          ),
                          trailing: InkWell(
                            splashColor: global.orange,
                            highlightColor: Colors.white,
                            child: Icon(
                              Icons.qr_code_scanner_rounded,
                              size: 40,
                              color: global.orange,
                            ),
                            onTap: () {
                              global.whichEventYa= global.dayThreeKeys[index];                            //Collection key
                              global.amount= global.dayThreeAmount[index];
                              Navigator.pushNamed(
                                  context,
                                  '/home/Events/BouncerQRScanner'
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                ],
              );
            },
          );
        },
      ),
    );
  }
}