import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Plant extends StatefulWidget {
  @override
  _PlantState createState() => new _PlantState();
}

class _PlantState extends State<Plant> {

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[

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
          
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Text('hello'),
            items: const <AppBarItem>[
              AppBarItem(
              icon: Icon(Icons.add_a_photo),
              title: Text('Camera'),
              ),
              AppBarItem(
              icon: Icon(Icons.check),
              title: Text('AR'),
              ),
            ]

          body: Center(
            child: Column(
              children: <Widget>[

              Text( // plant name
                'Sunny',
                style: TextStyle(
                  fontFamily: "GalleriaSans",
                  fontSize: 35,
                  letterSpacing: .6,
                  fontWeight: FontWeight.bold,
                )
              ),

              Text( // type of plant
                'Common Sunflower',
                style: TextStyle(
                  fontFamily: "GalleriaSans",
                  fontSize: 20,
                  letterSpacing: .5,
                  fontWeight: FontWeight.normal,
                )
              ),

              Expanded( // plant image
                child: Image.asset('assets/stage9.png'),
               ),
            ],)
            //Insert plant image
          ),

          bottomNavigationBar: BottomAppBar(
            child: Text('hi2'), //Insert swipe up to see stats
          ),

        ),

      ],
    );
  }
}