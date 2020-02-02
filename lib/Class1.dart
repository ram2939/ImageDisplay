import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:imagepicker/Data.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 100,
          height: 100,
          child: Provider.of<Data>(context).image == null
              ? Text("No image selected")
              : Image.file(Provider.of<Data>(context).image, fit: BoxFit.fill)),
    );
  }
}
