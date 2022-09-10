import 'package:flutter/material.dart';
import 'globals.dart';
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
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        'assets/images/Challengers_text_white-01.png',
                        width: 190,
                      ),
                    ),
                    const SizedBox(height: 140,),
                    const Center(
                      child: Text('ORGANIZER', style: TextStyle(color:Color(0xFFFF9603), fontFamily: 'Urbanist', fontWeight: FontWeight.w700,fontSize: 26,),),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    Center(
                      child: Image.asset(
                        'assets/images/Aerophilia-logo-White.png',
                      ),
                    ),
                    const SizedBox(
                      height: 60.0,
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          signature,
                          style: const TextStyle(fontSize: 24.0,fontWeight: FontWeight.w700,fontFamily: "Urbanist",color: Color(0xFFFF9704)),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}