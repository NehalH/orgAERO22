
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

////////////////////////////////////////////////////////////////////////////////

List dayOnePoster= [
  'https://aerophilia.in/events/technical/DroneRace.webp',
  'https://aerophilia.in/events/technical/BotSumo.webp',
  'https://aerophilia.in/events/technical/LineFollower.webp',
  'https://aerophilia.in/events/technical/CodingContest.webp',
  'https://aerophilia.in/events/technical/Sherlocked.webp',
  'https://aerophilia.in/events/technical/SoloDance.webp',
  'https://aerophilia.in/events/technical/EngineOverhaul.webp',
  'https://aerophilia.in/events/technical/Valorant1.webp',
  'https://aerophilia.in/events/technical/CODM1.webp',
];

List dayOneEvents= [  // 9
  'Lift Off!',
  'Bot Sumo',
  'Line Follower',
  'Man v/s Bug',
  'Sherlocked',
  'Feel the Beat',
  'Grease Monkey',
  'MAYHEM! VALORANT',
  'MAYHEM! CODM'
];

List dayOneVenue= [
  'Main Ground',
  'Badminton Court',
  'Mech Seminar Hall',
  'English Lab',
  'Netravati Auditorium',
  '.',
  'Mech Tech garage',
  'Online',
  'Online '
];

List dayOneKeys= [
  'LIFT OFF!',
  'BOT SUMO',
  'LINE FOLLOWER',
  'MAN vs BUG',
  'SHERLOCKED',
  'FEEL THE BEAT',
  'GREASE MONKEY',
  'MAYHEM! Valorant',
  'MAYHEM! CODM'
];

////////////////////////////////////////////////////////////////////////////////

List dayTwoPoster= [
  'https://aerophilia.in/events/technical/SkyDive.webp',
  'https://aerophilia.in/events/technical/RoboSoccer.webp',
  'https://aerophilia.in/events/technical/PaperPresentation.webp',
  'https://aerophilia.in/events/technical/BattleofBands.webp',
  'https://aerophilia.in/events/technical/GroupDance.webp',
  'https://aerophilia.in/events/technical/Sherlocked.webp',
];

List dayTwoEvents= [ // 6
  'SKYDIVE',
  'ROBO SOCCER',
  'PAPER PRESENTATION',
  'ROCKIN\' RIOT',
  'IN10SITY',
  'Sherlocked',
];

List dayTwoVenue= [
  'Main Ground',
  'Badminton Court',
  '2nd Floor MBA Classroom',
  'Open Air Auditorium',
  'Open Air Auditorium',
  'Netravati Auditorium',
];

List dayTwoKeys= [
  'SKY DIVE',
  'ROBO SOCCER',
  'PAPER PRESENTATION',
  'ROCKIN RIOT',
  'IN10SITY',
  'SHERLOCKED',
];

////////////////////////////////////////////////////////////////////////////////

List dayThreePoster= [
  'https://aerophilia.in/events/technical/SkyDive.webp',
  'https://aerophilia.in/events/technical/TugofBots.webp',
  'https://aerophilia.in/events/technical/WaterRocket.webp',
  'https://aerophilia.in/events/technical/SingingContest.webp',
];

List dayThreeEvents= [ // 4
  'SKYDIVE',
  'TUG OF BOTS',
  'WATER ROCKET',
  'SING ON',
];

List dayThreeVenue= [
  'Main Ground',
  'Badminton Court',
  'Ground Behind G-Hostel',
  'Netravati Auditorium',
];

List dayThreeKeys= [
  'SKY DIVE',
  'TUG OF BOTS',
  'WATER ROCKET',
  'SING ON',
];

////////////////////////////////////////////////////////////////////////////////

List primHead= [
  '',
];

List primName= [
  '',
];

List primPh= [
  '',
];

////////////////////////////////////////////////////////////////////////////////

List eveHead= [
  '',
];

List eveName= [
  '',
];

List evePh= [
  '',
];

////////////////////////////////////////////////////////////////////////////////