import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;
    
    return Column(children: <Widget>[
      Container(
          child: IconButton(
        icon: Icon(
          Icons.account_circle,
          color: Colors.white,
          size: 100.0,
        ),
      ))
    ]);
  }
}
