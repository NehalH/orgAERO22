import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'globals.dart' as global;

CollectionReference userKundali = global.userKundali;

class ScanQrPage extends StatefulWidget {
  const ScanQrPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
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
                width: 65.0,
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
            const SizedBox(
              width: 25,
            ),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  )
                ),
                backgroundColor: MaterialStateProperty.all<Color>(global.orange,),
              ),
              onPressed: () async {
                await controller?.pauseCamera();
                enterManually(context);
              },
              child: const Text("Enter manually"),
            ),
          ],
        ),
      ),
    );
  }

//////////////////////////////////////////////////////////////////////////////// Enter Manually
  Future enterManually(BuildContext context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Dialog(
            backgroundColor: Colors.transparent,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(

                        onChanged: (value) => global.scanID = value,
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.grey, width: 2.0),
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          hintText: 'eg: 1234',
                          hintStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: null,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 200,
                        child: MaterialButton(

                          onPressed: () {
                            regStatus(context);
                          },
                          color: global.orange,
                          child: const Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: MaterialButton(
                          onPressed: () async{
                            await controller!.resumeCamera();
                            Navigator.pop(context);
                          },
                          color: Colors.blue,//Colors.red.shade600,
                          child: const Text(
                            "Close",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),

                    ],
                  ),
                )
              ),

          );
        },
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
        print(global.scanID);
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
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: global.orange,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 350,
                    child: doQuery(context),
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
      },
    );
  }

  Widget doQuery(BuildContext context) {

    return FutureBuilder<DocumentSnapshot>(
      future: userKundali.doc(global.scanID).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Column(
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
          );
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Column(
            children: [
              const SizedBox(height: 20,),
              const Icon(Icons.dangerous_rounded, color: Colors.red, size: 180,),
              Text(
                'User not found!',
                style: TextStyle(
                  fontSize: 28,
                  color: global.black,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              )
            ],
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Column(
            children: [
              const SizedBox(height: 20,),
              const Icon(Icons.verified_user, color: Colors.green, size: 180),
              ListTile(
                title: Text(
                  'User found',
                  style: TextStyle(
                    fontSize: 28,
                    color: global.black,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(2.0, 8.0, 0, 0),
                  child: Text(
                    'Name: ${data['Name']}\n'
                        'Contact: ${data['Contact']}',
                    style: const TextStyle(fontSize: 18.0, color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          );
        }
        return Column(
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
        );
      },
    );
  }
}
