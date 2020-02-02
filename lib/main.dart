import 'package:flutter/material.dart';
import 'package:imagepicker/Class1.dart';
import 'package:imagepicker/Class2.dart';
import 'package:imagepicker/Data.dart';
import 'package:provider/provider.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<Data>(
        create: (context) {
          return Data();
        },
        child: DefaultTabController(
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
              children: [Tab1(), Tab1(), Tab2()],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
