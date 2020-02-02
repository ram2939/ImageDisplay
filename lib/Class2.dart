import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:imagepicker/Data.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            child: Provider.of<Data>(context).image == null
                ? Text("Add Image")
                : Text("Change Image"),
            onPressed: () {
              Provider.of<Data>(context, listen: false).changeImage();
            }));
  }
}
