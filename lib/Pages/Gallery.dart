import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

Map<int, Uint8List> imageData = {};

List<int> requestedIndexes = [];

class ImagesScreen extends StatelessWidget {
  final plant = "sunflower";

  Widget makeImagesGrid() {
    return Gridview.builder(
      itemCount: 12,
      gridDelegate: 
          SilverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context,index) {
      return ImageGridItem(index+1);
      }); //Gridview.builder
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery of $plant")
      ),
      body: Container(
        child: Center(),
      ),
    );
  }
}


class ImageGridItem extends StatefulWidget {

  int _index;

  ImageGridItem(int index) {
    this._index = index;
  }

    @override
    _ImageGridItemState createState() => _ImageGridItemState();
  }
  
  class _ImageGridItemState extends State<ImageGridItem> {
      
      Uint8List imageFile;
      StorageReference photosReference = FirebaseStorage.instance.ref().child("gallery");

    getImage() {
      if (!requestedIndexes.contains(widget._index)) {
      int MAX_SIZE = 7*1024*1024;
      
      photosReference.child("image_${widget._index}.jpg").getData(MAX_SIZE).then((data) {
      this.setState(() {
        imageFile = data;
      });
      imageData.putIfAbsent(widget._index, ()) {
        return data;
      }
      }).catchError((error) {
        debugPrint(error.toString());
    });
    requestedIndexes.add(widget._index);
      }
    }
    
  Widget decideGridTileWidget() {
      if(imageFile == null) {
        Center(child: Text("No Data"));
      } else {
        return Image.memory(imageFile,fit: BoxFit.cover,);
      }
    }
    
    @override
    Widget build(BuildContext context) {
      super.initState();
      if (imageData.containsKey(widget._index)) {
        getImage();
      } else {
        this.setState(() {
          imageFile = imageData[widget._index];

        });
      }
      return GridTile(child: decideGridTileWidget());
    }
  }