import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as global;

CollectionReference events= global.events;

class BouncerScanQrPage extends StatefulWidget {
  const BouncerScanQrPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BouncerScanQrPageState();
}

class _BouncerScanQrPageState extends State<BouncerScanQrPage> {
  final CollectionReference collectionRef =
  FirebaseFirestore.instance.collection("participants");

  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool flashStatus = false;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(flex: 4, child: _buildQrView(context)),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: SafeArea(
        child: Row(
          children: [
            FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.transparent,
              child: FlutterSwitch(
                //showOnOff: true,
                width: 75.0,
                height: 35.0,
                toggleSize: 20.0,
                value: flashStatus,
                borderRadius: 30.0,
                padding: 4.0,
                activeToggleColor: Colors.white,
                inactiveToggleColor: global.orange,
                activeSwitchBorder: Border.all(
                  color: Colors.white,
                  width: 1.0,
                ),
                inactiveSwitchBorder: Border.all(
                  color: global.orange,
                  width: 1.0,
                ),
                activeColor: global.orange,
                inactiveColor: Colors.white38,
                activeIcon: Icon(
                  Icons.lightbulb_rounded,
                  color: global.orange,
                ),
                inactiveIcon: const Icon(Icons.lightbulb_outline_rounded),
                onToggle: (val) async {
                  flashStatus = val;
                  await controller?.toggleFlash();
                  setState(() {});
                },
              ),
              onPressed: () {},
            ),
            MaterialButton(
              /////////////////////////////////////////////////////  Test button / Pause
              onPressed: () async {
                await controller?.pauseCamera();
              },
              color: Colors.white,
              child: const Text("Press"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // Check how width or tall the device is and change the scanArea and overlay accordingly.
    controller?.resumeCamera();
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;

    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: global.orange,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() async {
        await controller.pauseCamera();
        result = scanData;
        global.scanID = result!.code as String;
        regStatus(context); //Do Query
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  //////////////////////////////////////////////////////////////////////////////  RegStatus Dialogue

  Future regStatus(BuildContext context) {
    return showDialog(
      //barrierColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return doQuery(context);
      },
    );
  }

  Future youSure(BuildContext context) {                                         // youSure?
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return Dialog(
          child:
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.red,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    const Text("You are about to make a registration for this event.\n"
                        "Make sure to collect the full registration amount fron the participant\n"
                        "The same will be retrieved from you later\n"
                        "Do you wish to proceed?"
                    ),
                    MaterialButton(
                      onPressed: (){
                        events.doc(global.whichEventYa).update({'paid':true});
                        Navigator.pop(context);
                      },
                      child: const Text('Proceed'),
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
        );
      }
    );
  }

  Widget doQuery(BuildContext context) {                                        //doQuery

    return FutureBuilder<DocumentSnapshot>(
      future: events.doc(global.whichEventYa).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {                                                 //Error
          return Dialog(
            backgroundColor: Colors.transparent,
            child:
            Column(mainAxisSize: MainAxisSize.min, children: [
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: global.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 350,
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          const Icon(Icons.warning_rounded, color: Colors.yellow, size: 180,),
                          Text(
                            'Something went wrong. Try again.',
                            style: TextStyle(
                              fontSize: 28,
                              color: global.black,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          controller?.resumeCamera();
                          Navigator.pop(context);
                        },
                        child: const Text("Close")),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ]),
          );
        }

        ////////////////////////////////////////////////////////////////////////User not found
        if (snapshot.hasData && !snapshot.data!.exists) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: global.orange,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: 350,
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          const Icon(Icons.dangerous_rounded, color: Colors.red, size: 180,),
                          Text(
                            'User has not registered!',
                            style: TextStyle(
                              fontSize: 28,
                              color: global.black,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {
                            controller?.resumeCamera();
                            Navigator.pop(context);
                          },
                          child: const Text("Close")
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ]),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
          snapshot.data!.data() as Map<String, dynamic>;
          ////////////////////////////////////////////////////////////////////// Payment incomplete
          if(!data['paid']){
            return Dialog(
              backgroundColor: Colors.transparent,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: global.orange,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        child: Column(
                          children: const [
                            SizedBox(height: 20,),
                            Icon(Icons.warning_rounded, color: Colors.yellow, size: 180,),
                            Text('Payment not done!'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 200,
                        child: MaterialButton(
                          elevation: 5,
                          color: Colors.green,
                            onPressed: () {
                              youSure(context);
                            },
                            child: const Text("Offline Payment")
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                        child: MaterialButton(
                            elevation: 5,
                            color: Colors.blue,
                            onPressed: () {
                              controller?.resumeCamera();
                              Navigator.pop(context);
                            },
                            child: const Text("Close")
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ]),
            );
          }
          ////////////////////////////////////////////////////////////////////// Attendance Successful
          else if(!data['Attended']){
            events.doc(global.whichEventYa).update({'Attended': true});
            return Dialog(
              backgroundColor: Colors.transparent,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: global.orange,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        child: Column(
                          children: const [
                            SizedBox(height: 20,),
                            Icon(Icons.verified_user, color: Colors.green, size: 180),
                            Text('Verified and marked as attended.'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              controller?.resumeCamera();
                              Navigator.pop(context);
                            },
                            child: const Text("Close")
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ]),
            );
          }
          ////////////////////////////////////////////////////////////////////// Already Attended
          else{
            return Dialog(
              backgroundColor: Colors.transparent,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: global.orange,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 350,
                        child: Column(
                          children: const [
                            SizedBox(height: 20,),
                            Icon(Icons.dangerous_rounded, color: Colors.red, size: 180,),
                            Text('Already attended!'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 200,
                        child: ElevatedButton(
                            onPressed: () {
                              controller?.resumeCamera();
                              Navigator.pop(context);
                            },
                            child: const Text("Close")
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ]),
            );
          }
        }
        //////////////////////////////////////////////////////////////////////// Loading
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: Column(
                      children: const [
                        SizedBox(height: 20,),
                        SizedBox(
                          height: 140, width: 140,
                          child: CircularProgressIndicator(
                            strokeWidth: 20,
                            semanticsLabel: 'Circular progress indicator',
                          ),
                        ),
                        Text("\nLoading",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                        onPressed: () {
                          controller?.resumeCamera();
                          Navigator.pop(context);
                        },
                        child: const Text("Close")
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ]),
        );
      },
    );
  }
}
