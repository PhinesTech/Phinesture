import 'package:flutter/material.dart';

import 'Pages/LogIn.dart';
import 'Pages/Camera.dart';
import 'Pages/Email.dart';
import 'Pages/Home.dart';
import 'Pages/Search.dart';
import 'Pages/Plant.dart';

void main() {
  runApp(
    MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => Plant()); // temporary
            break;
          case '/home':
            return MaterialPageRoute(builder: (context) => Home());
            break;
          case '/email':
            return MaterialPageRoute(builder: (context) => Email());
            break;
          case '/camera':
            return MaterialPageRoute(builder: (context) => Camera());
            break;
          case '/search':
            return MaterialPageRoute(builder: (context) => Search());
            break;
        }
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}