import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context).settings.arguments;

    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xFF4CAF50),
              Color(0xFF6078ea),
            ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp)),
        child: Column(children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 120.0),
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 400.0,
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: new Text(args.toString(),
                style: TextStyle(
                  fontSize: 30,
                )),
          )
        ]));
  }
}
