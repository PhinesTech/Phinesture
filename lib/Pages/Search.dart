import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => new _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Look Up Patron'),
        backgroundColor: Color(0xFF6078ea),
      ),
      body: Container(
        child: Center(
          
        ),
      ),
    );
  }
}