import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(Image_Pick());
}

class Image_Pick extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Image_Pick_State();
  }
}

class Image_Pick_State extends State<Image_Pick> {
  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Tab 1"),
                ),
                Tab(
                  child: Text("Tab 2"),
                ),
                Tab(
                  child: Text("Tab 3"),
                ),
              ],
            ),
            title: Text('Image Display'),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: _image == null
                      ? Text('No image selected.')
                      : Image.file(_image, fit: BoxFit.fill),
                ),
              ),
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: _image == null
                      ? Text('No image selected.')
                      : Image.file(_image, fit: BoxFit.fill),
                ),
              ),
              Center(
                  child: RaisedButton(
                child:
                    _image == null ? Text('Add Image') : Text("Change Image"),
                onPressed: getImage,
              ))
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
