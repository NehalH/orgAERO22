import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      body: Scrollable(
        viewportBuilder:
            (BuildContext context, ViewportOffset position) {
          return ListView.builder(
            padding: const EdgeInsets.fromLTRB(20,30,20,30),
            itemCount: 21,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
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
                          global.eveHead[index],                                                    //Event name
                          style: TextStyle(fontSize: 18, color: global.orange,),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.fromLTRB(2.0,8.0,0,0),
                          child: Text(
                            global.eveName[index],                                          //Contact name
                            style: const TextStyle(fontSize: 16.0, color: Colors.white38),
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              splashColor: global.orange,
                              highlightColor: Colors.white,
                              child: const Icon(Icons.whatsapp_rounded, size: 28, color: Colors.green,),
                              onTap: () {
                                launch("whatsapp://send?phone=${global.eveWA[index]}");
                              },
                            ),
                            const SizedBox(width: 20,),
                            InkWell(
                              splashColor: global.orange,
                              highlightColor: Colors.white,
                              child: const Icon(Icons.phone, size: 28, color: Colors.white,),
                              onTap: () {
                                launch("tel://${global.evePh[index]}");                                 //Contact number
                              },
                            ),
                          ],
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
