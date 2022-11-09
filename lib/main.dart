import 'package:firebase_core/firebase_core.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:org_aero22/Events/event_list.dart';
import 'package:org_aero22/bouncer_qr_scanner.dart';
import 'package:org_aero22/contacts/primary_heads.dart';
import 'package:org_aero22/qr_scanner.dart';
import 'package:org_aero22/splash_screen.dart';
import 'contact.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'challenger_info.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'globals.dart' as global;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Organizer@AEROPHILIA22",
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash_screen(),
        '/home': (context) => const MyHomePage(),
        '/home/Contact': (context) => const primaryHeadsPage(),
        '/home/Events': (context) => const EventListPage(),
        '/home/Events/BouncerQRScanner': (context) => const BouncerScanQrPage(),
        '/home/QRScanner': (context) => const ScanQrPage(),
      },
    ),
  );

}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String sigSafe= " ";

  @override
  void initState() {
    _getVarSharedPref();
    super.initState();
  }

  int _selectedIndex = 2;
  bool authenticated = false;

  List<Widget> pageList = [
    const ChallengerInfoPage(),
    const ContactPage(),
    const EventListPage(),
    const ScanQrPage(),
  ];


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      //////////////////////////////////////////////////////////////////////////  Floating Button

      floatingActionButton: InkWell(
        splashColor: Colors.white,
        onLongPress: () {
          _authDialog(context);
        },
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          child: _getAuthIcon(),
          onPressed: (){},
        ),
      ),

      //////////////////////////////////////////////////////////////////////////  Bottom Navigation Bar

      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Colors.black,
        iconSize: 18,
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.account_box),
            title: const Text('Challenger'),
            activeColor: Colors.white,
            inactiveColor: Colors.white,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.phone),
            title: const Text('Contact'),
            activeColor: Colors.white,
            inactiveColor: Colors.white,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.dashboard_rounded),
            title: const Text('Events'),
            activeColor: Colors.white,
            inactiveColor: Colors.white,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.badge),
            title: const Text('Quick Scan'),
            activeColor: Colors.white,
            inactiveColor: Colors.white,
          ),
        ],
      ),

      //////////////////////////////////////////////////////////////////////////    Body

      body: pageList.elementAt(_selectedIndex),
    );
  }

  //////////////////////////////////////////////////////////////////////////////   Authentication Dialogue

  void _authDialog(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return SafeArea(
              child: Wrap(
            children: <Widget>[
              Dialog(
                  backgroundColor: Colors.black54,
                  elevation: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: TextField(
                          //controller: _textInputController,
                          //onChanged: (value) => global.passkey = value,
                          onChanged: (value) {
                            global.passkey = value;
                            sigSafe = value;
                          },
                          style: const TextStyle(color: Colors.transparent),
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            fillColor: Colors.white,
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.redAccent, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            hintText: 'Enter Passkey',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: null,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                        child: TextField(
                          //onChanged: (value) => global.signature = value,
                          onChanged: (value) {
                            if(sigSafe=='nehal') {                               ///---///---///---///---///---///Here
                              global.signature = value;
                            }
                          },
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1.0),
                            ),
                            fillColor: Colors.white,
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.redAccent, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 1.0),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            hintText: 'Signature',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: null,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: MaterialButton(
                          onPressed: () {
                            super.setState(() {
                              checkPassKey();
                            });
                            Navigator.pop(context);
                          },
                          color: Colors.redAccent.shade400,
                          child: const Text(
                            "Validate",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ));
        });
  }

  //////////////////////////////////////////////////////////////////////////////   Auth functions

  Future<void> _setPassKEYSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    // It doesn't make much sense imho, better use a boolean
    await prefs.setString('passKEY', 'nehal');                                   ///---///---///---///---///---///Here
    await prefs.setString('signature', global.signature);
  }

  Future<void> _getVarSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final storedPasskey = prefs.getString('passKEY') ?? 'Not_yet_authorised';
    global.signature = prefs.getString('signature')!;
    setState(() {
      authenticated = storedPasskey == 'nehal';
      if(authenticated){

        global.userKundali =
        FirebaseFirestore
            .instance
            .collection('Participant');

      }
    });
  }

  void checkPassKey() {
    final String enteredPassKey = global.passkey;
    if (enteredPassKey == 'nehal') {                                             ///---///---///---///---///---///Here
      setState(() {
        authenticated = true;
        super.setState(() {});
      });
      _setPassKEYSharedPref();
      } /*else {
      setState((){
        global.signature = 'UNAUTHORISED!';
      });
    }*/
  }

  Icon _getAuthIcon() {
    return authenticated
        ? const Icon(Icons.check_circle_sharp, color: Colors.greenAccent)
        : const Icon(Icons.lock, color: Colors.redAccent);
  }
}
