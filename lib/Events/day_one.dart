import 'package:cloud_firestore/cloud_firestore.dart';
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
              padding: const EdgeInsets.fromLTRB(20,30,20,30),
                itemCount: 9,
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
                            image: NetworkImage(global.dayOnePoster[index]),                //Poster
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
                                global.dayOneEvents[index],                                                    //Event name
                                style: TextStyle(
                                  fontSize: 18,
                                  color: global.orange,
                                ),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.fromLTRB(2.0,8.0,0,0),
                                child: Text(
                                  global.dayOneVenue[index],                                            //Event venue
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
                                  global.whichEventYa= global.dayOneKeys[index];                            //Collection key
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
