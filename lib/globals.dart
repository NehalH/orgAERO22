
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

String signature = ' ';
var orange= const Color(0xFFFF9603);
var background= const Color(0xFF29282A);
var black= Colors.black;
var eventsBorder= const Color(0xFFFF9603);
late String scanID= " ";

CollectionReference events =
FirebaseFirestore.
instance.collection('Unauthorised Access').
doc("Unauthorised Access").
collection('Unauthorised Access');

CollectionReference userKundali =
FirebaseFirestore.
instance.collection('Unauthorised Access');

late String whichEventYa;