import 'package:flutter/material.dart';

import 'Pages/LogIn.dart';
import 'Pages/Home.dart';
import 'Pages/Profile.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Phinesture',
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LogIn(),
        '/home': (BuildContext context) => Home(),
        '/profile': (BuildContext context) => Profile(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}