import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';



var authIcon = const Icon(Icons.lock, color: Colors.redAccent,);
late String enteredPassKEY;


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Aerophilia 2022 Organizer',
    initialRoute: '/',
    routes: {
      '/': (context) => const MyHomePage(),
    }
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black54,
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
                onLongPress: (){
                  _authDialog(context);
                },
                child: authIcon
              )
          ),
        ],
      ),
      body: Center(
      ),
    );
  }
  
  void _authDialog(context) {
    showModalBottomSheet(
        backgroundColor: Colors.black54,
        context: context,
        builder: (BuildContext context) {
          return SafeArea(child: Wrap(

            children: <Widget>[
              Dialog(
                backgroundColor: Colors.black54,
                elevation: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: TextField(
                        onChanged: (value) =>  enteredPassKEY = value,
                        //cursorColor: Colors.redAccent,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey, width: 1.0),
                          ),
                          fillColor: Colors.white,
                          focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.redAccent, width: 2.0),),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1.0),),
                          border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white,),),
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
                    const SizedBox(height: 10),
                    MaterialButton(
                      onPressed: () { checkPassKey(); },
                      color: Colors.redAccent.shade400,
                      child: const Text("Validate", style: TextStyle(color: Colors.white),),
                    ),
                    const SizedBox(height: 200),
                  ],
                )
              ),
            ],
          ));
        }
    );
  }

  Future<void> _setPassKEYSharedPref() async{
    final prefs= await SharedPreferences.getInstance();
    await prefs.setString('passKEY', 'enteredPassKEY');
  }

/*  Future<void> _setAuthIconSharedPref() async{
    final prefs= await SharedPreferences.getInstance();
    await prefs.setString('authIcon', '$authIcon');
  }*/

  Future<void> _getVarSharedPref() async {
    final prefs= await SharedPreferences.getInstance();
    authIcon = const Icon(Icons.lock, color: Colors.redAccent,);
    enteredPassKEY = prefs.getString('passKEY')!;
    // ignore: prefer_conditional_assignment, unnecessary_null_comparison
    if(authIcon== null){
      authIcon = const Icon(Icons.lock, color: Colors.redAccent,);
      enteredPassKEY = 'not_authorised_yet';
    }
  }

  void checkPassKey(){
    if(enteredPassKEY=='Nehal'){
      setState(() {
        authIcon= const Icon(Icons.check_circle_sharp, color: Colors.greenAccent,);
      });
      _setPassKEYSharedPref();
      //_setAuthIconSharedPref();
    }
  }

}
