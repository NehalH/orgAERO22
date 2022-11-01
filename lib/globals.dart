
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

late String passkey;
String signature = ' ';
var cardRadius= 8.0;
var orange= const Color(0xFFFF9603);
var cardBackground= Colors.black87;
var contactBorder= Colors.white60; //29282A
var black= Colors.black;
var eventsBorder= const Color(0xFFFF9603);
late String scanID;
late String whichEventYa;

CollectionReference userKundali =
FirebaseFirestore
    .instance
    .collection('Unauthorised Access');

