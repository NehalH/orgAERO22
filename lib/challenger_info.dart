import 'package:flutter/material.dart';
import 'main.dart';
import 'globals.dart' as global;


class ChallengerInfoPage extends StatefulWidget {
  const ChallengerInfoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _challengerInfoPageState();
}

// ignore: camel_case_types
class _challengerInfoPageState extends State<ChallengerInfoPage> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 300,
          height: 200,
          padding: const EdgeInsets.all(10.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.black,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.account_box, size: 40, color: Colors.white,),
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(2.0,14.0,0,0),
                    child: Text(
                        global.signature,
                        style: const TextStyle(fontSize: 30.0, color: Colors.white)
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.fromLTRB(2.0,8.0,0,0),
                    child: Text(
                        'Aerophilia 2022 | Challengers',
                        style: TextStyle(fontSize: 16.0, color: Colors.white38),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}