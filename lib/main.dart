import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Pages/LogIn.dart';
import 'Pages/Home.dart';
import 'Pages/Plant.dart';
import 'Pages/Profile.dart';
import 'Pages/MessageList.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final FirebaseApp app = await FirebaseApp.configure(
    name: 'Phinesture',
    options: const FirebaseOptions(
      googleAppID: "1:685688366527:android:05a526c0720170829ced0a",
      gcmSenderID: "685688366527",
      apiKey: "AIzaSyC0TANY6rcyQC6USsL92huM4OENhqKmmWM",
      projectID: "phinesture",
    ),
  );
  final Firestore firestore = Firestore(app: app);

  runApp(
    MaterialApp(
      title: 'Phinesture',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LogIn(),
        // '/home': (BuildContext context) => MessageList(firestore: firestore),
        '/home': (BuildContext context) => Home(firestore: firestore),
        '/profile': (BuildContext context) => Profile(),
        '/plant': (BuildContext context) => Plant(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}