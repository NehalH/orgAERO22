import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'globals.dart' as global;

class ScanQrPage extends StatefulWidget {
  const ScanQrPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ScanQrPageState();
}

class _ScanQrPageState extends State<ScanQrPage> {
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
          /*Expanded(
            flex: 1,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (result != null)
                    Text(
                        'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                  else
                    const Text('Scan a code'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () async {
                              await controller?.toggleFlash();
                              setState(() {});
                            },
                            child: FutureBuilder(
                              future: controller?.getFlashStatus(),
                              builder: (context, snapshot) {
                                return Text('Flash: ${snapshot.data}');
                              },
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                            onPressed: () async {
                              await controller?.flipCamera();
                              setState(() {});
                            },
                            child: FutureBuilder(
                              future: controller?.getCameraInfo(),
                              builder: (context, snapshot) {
                                if (snapshot.data != null) {
                                  return Text(
                                      'Camera facing ${describeEnum(snapshot.data!)}');
                                } else {
                                  return const Text('loading');
                                }
                              },
                            )),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () async {
                            await controller?.pauseCamera();
                            regStatus(context);
                          },
                          child: const Text('pause',
                              style: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          onPressed: () async {
                            await controller?.resumeCamera();
                          },
                          child: const Text('resume',
                              style: TextStyle(fontSize: 20)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )*/
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: SafeArea(
        child:  FloatingActionButton(
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
            activeIcon: Icon(Icons.lightbulb_rounded,color: global.orange,),
            inactiveIcon: Icon(Icons.lightbulb_outline_rounded),
            onToggle: (val) async {
              flashStatus= val;
              await controller?.toggleFlash();
              setState(() {});
            },
          ),
          onPressed: (){},
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    controller?.resumeCamera();
    var scanArea = (MediaQuery
        .of(context)
        .size
        .width < 400 ||
        MediaQuery
            .of(context)
            .size
            .height < 400)
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
      setState(() {
        result = scanData;
        global.scanID = result!.code;
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

  void regStatus(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getStatusIcon(),
                getStatusString(),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    }, child: const Text("Close"))
              ],
            ),
          ),
        );
      },
    );
  }

  Icon getStatusIcon() {
    if (global.regStatus == 1) {
      return const Icon(Icons.verified_user, color: Colors.green, size: 180);
    }
    else if (global.regStatus == 0) {
      return const Icon(Icons.dangerous_rounded, color: Colors.red, size: 180,);
    }
    else if (global.regStatus == 2) {
      return const Icon(
        Icons.warning_rounded, color: Colors.yellow, size: 180,);
    }
    return const Icon(Icons.refresh, color: Colors.blueGrey, size: 180,);
  }

  Text getStatusString() {
    if (global.regStatus == 1) {
      return const Text("Verified!", style: TextStyle(fontSize: 20),);
    }
    else if (global.regStatus == 0) {
      return const Text("Not Registered!", style: TextStyle(fontSize: 20),);
    }
    else if (global.regStatus == 2) {
      return const Text("Payment Not done!", style: TextStyle(fontSize: 20),);
    }
    return const Text("Error! Retry.", style: TextStyle(fontSize: 20),);
  }

}