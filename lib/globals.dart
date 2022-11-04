
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
  'Control Room',
  'Registrations Incharge',
  'Hospitality In-Charge',
  'Crowd Control In-Charge',
  'College Coordinator',
  'Record Maintenance In-Charge',
  'Technical Head',
  'Cultural Head',
];

List primName= [
  'Prajwal P',
  'Al Ashqan Babu',
  'Varun Raj Melanta',
  'Thejas rao',
  'Abhinav',
  'Neha V',
  'Nehal Hosalikar',
  'Rachana Shetty',
];

List primPh= [
  '9480382738',
  '8152009584',
  '9731527524',
  '9380174402',
  '9972061235',
  '9535999994',
  '8217785009',
  '7620533015',
];

List primWame= [
  'wa.me/+919480382738',
  'wa.me/+918152009584',
  'wa.me/+919731527524',
  'wa.me/+919380174402',
  'wa.me/+919972061235',
  'wa.me/+919535999994',
  'wa.me/+918217785009',
  'wa.me/+917620533015',
];

////////////////////////////////////////////////////////////////////////////////

List eveHead= [
  'Skydive',
  'Lift Off!',
  'Robo Soccer',
  'Tug of Bots',
  'Line Foloower',
  'Bot Sumo',
  'Flight Simulation',
  'Blind Coding',
  'Man v/s Bug',
  'Water Rocket',
  'Grease Monkey',
  'Paper Presentation',
  'Sherlocked',
  'Pixel Perfect',
  'Burp!',
  'Rockin Riot',
  'In10sity',
  'Feel the Beat',
  'Sing On',
  'Trivia Master',
  'ISRO Hackathon',
];

List eveName= [
  'Nehal Hosalikar',
  'Sushan Shetty',
  'Dion Dsouza',
  'Rakshith K',
  'Akshay Shet',
  'Rakshith K',
  'Nikhil G V',
  'Jayesh Gurav',
  'Jayesh Gurav',
  'Dion Dsouza',
  'Aheesh Rao',
  'Manya Shetty',
  'Rachana Shetty',
  'Nikhil G V',
  'Thejas Rao',
  'Sweedone J Dsouza',
  'Rachana Shetty',
  'Ananya Shetty',
  'Thejas Rao',
  'Shrama Bhandary',
  'Sheshadri S S',
];

List evePh= [
  '8217785009',
  '6360298756',
  '7975573950',
  '7306231899',
  '9449384765',
  '7306231899',
  '9611485566',
  '7624871862',
  '7624871862',
  '7975573950',
  '8095815347',
  '7020746170',
  '7620533015',
  '9611485566',
  '9380174402',
  '9535925744',
  '7620533015',
  '7019737032',
  '9380174402',
  '9945413269',
  '7019031534',
];

List eveWame= [
  'wa.me/+918217785009',
  'wa.me/+916360298756',
  'wa.me/+917975573950',
  'wa.me/+917306231899',
  'wa.me/+919449384765',
  'wa.me/+917306231899',
  'wa.me/+919611485566',
  'wa.me/+917624871862',
  'wa.me/+917624871862',
  'wa.me/+917975573950',
  'wa.me/+918095815347',
  'wa.me/+917020746170',
  'wa.me/+917620533015',
  'wa.me/+919611485566',
  'wa.me/+919380174402',
  'wa.me/+919535925744',
  'wa.me/+917620533015',
  'wa.me/+917019737032',
  'wa.me/+919380174402',
  'wa.me/+919945413269',
  'wa.me/+917019031534',
];

////////////////////////////////////////////////////////////////////////////////