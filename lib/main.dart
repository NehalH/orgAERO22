import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

String signature = 'Rogue/Outsider';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Organizer',
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(),
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
  var currentIndex = 0;
  final TextEditingController _textInputController = TextEditingController();
  bool authenticated = false;

  @override
  void initState() {
    super.initState();
    _getVarSharedPref();
  }

  @override
  void dispose() {
    _textInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,

      //////////////////////////////////////////////////////////////////////////   App Bar

      appBar: AppBar(
        //leading: const Icon(Icons.account_circle_rounded),
        //leadingWidth: 80,
        backgroundColor: Colors.black,
        elevation: 15,
        //shadowColor: Colors.grey.shade800,
        toolbarHeight: 66,
        centerTitle: true,
        title: const Text("AEROPHILIA'22"),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onLongPress: () {
                  _authDialog(context);
                },
                child: _getAuthIcon(),
              )),
        ],
      ),

      //////////////////////////////////////////////////////////////////////////  Navigation Bar

      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        height: size.width * .150,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .128,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color: index == currentIndex
                      ? Colors.orangeAccent
                      : Colors.black,
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),

      //////////////////////////////////////////////////////////////////////////    Body

      body: Center(
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Center(child: Text(' /')),
          ),
        ),
      ),
    );
  }

  //////////////////////////////////////////////////////////////////////////////   Navigation Icons

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.qr_code_scanner_rounded,
    Icons.info,
    Icons.article_rounded,
  ];

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
                          controller: _textInputController,
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
                          onChanged: (value) => signature = value,
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
                            checkPassKey();
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
    await prefs.setString('passKEY', 'nehal');
  }

  Future<void> _getVarSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final storedPasskey = prefs.getString('passKEY') ?? 'Not_yet_authorised';
    setState(() {
      authenticated = storedPasskey == 'nehal';
    });
  }

  void checkPassKey() {
    final String enteredPassKey = _textInputController.text;
    if (enteredPassKey == 'nehal') {
      setState(() {
        authenticated = true;
      });
      _setPassKEYSharedPref();
    } else {
      signature = 'Rogue/Outsider';
    }
  }

  Icon _getAuthIcon() {
    return authenticated
        ? const Icon(Icons.check_circle_sharp, color: Colors.greenAccent)
        : const Icon(Icons.lock, color: Colors.redAccent);
  }
}
