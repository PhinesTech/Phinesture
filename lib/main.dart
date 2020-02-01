import 'package:flutter/material.dart';

import 'Pages/LogIn.dart';
// import 'Pages/Camera.dart';
// import 'Pages/Email.dart';
import 'Pages/Home.dart';
// import 'Pages/Search.dart';

void main() {
  runApp(
    MaterialApp(
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => LogIn());
            break;
          case '/email':
            return MaterialPageRoute(builder: (context) => Home());
            break;
        }
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}