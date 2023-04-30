import 'package:flutter/material.dart';
import 'homescreen.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeScreen(),
        // ResponsiveWidget(
        //   largeScreen: HomeScreen(),
        //   smallScreen: HomeScreen(),
        // )
    );
  }
}
