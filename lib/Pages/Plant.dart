import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class Plant extends StatefulWidget {
  @override
  _PlantState createState() => new _PlantState();
}

class _PlantState extends State<Plant> {
  File _image;
  var ar = false;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      // Background image (window)
      Image.asset(
        'assets/window_background.png',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),

      // Scaffold for layout
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(actions: <Widget>[
          FloatingActionButton(
            onPressed: getImage,
            tooltip: 'Pick Image',
            child: Icon(
              Icons.add_a_photo,
              color: Colors.white,
              size: 30.0,
            ),
          ),
          Image.asset('assets/ar-off.png')
        ]),
        body: Center(
            child: Column(
          children: <Widget>[
            Text(
                // plant name
                'Sunny',
                style: TextStyle(
                  fontFamily: "GalleriaSans",
                  fontSize: 35,
                  letterSpacing: .6,
                  fontWeight: FontWeight.bold,
                )),
            Text(
                // type of plant
                'Common Sunflower',
                style: TextStyle(
                  fontFamily: "GalleriaSans",
                  fontSize: 20,
                  letterSpacing: .5,
                  fontWeight: FontWeight.normal,
                )),
            Expanded(
              // plant image
              child: Image.asset('assets/sunflower.gif'),
            ),
          ],
        )
            //Insert plant image
            ),
        bottomNavigationBar: BottomAppBar(
          child: Text('hi2'), //Insert swipe up to see stats
        ),
      ),
    ]);
  }
}

class AppBarItem {}
