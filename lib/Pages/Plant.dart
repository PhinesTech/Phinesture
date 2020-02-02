import 'package:flutter/material.dart';

class Plant extends StatefulWidget {
  @override
  _PlantState createState() => new _PlantState();
}

class _PlantState extends State<Plant> {

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: AssetImage("assets/window_background.png"),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   child: new Scaffold(
    //     body: Center(
    //       child: Text('Scaffold child'), // plant image
    //     ),
    //   ),
    // );
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
            title: Text('Sample Title'), //Insert upper icons
          ),

          body: Center(
            child: Image.asset('assets/stage9.png'), //Insert plant image
          ),

          bottomNavigationBar: BottomAppBar(
            child: Text('hi2'), //Insert swipe up to see stats
          ),

        ),

      ],
    );
  }
}