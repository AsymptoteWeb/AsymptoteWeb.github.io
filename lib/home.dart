import 'package:flutter/material.dart';
import 'Additional/responsive.dart';
import 'Additional/constants.dart';
import 'homescreen_v5.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeScreen_v5(),
        // ResponsiveWidget(
        //   largeScreen: HomeScreen(),
        //   smallScreen: HomeScreen(),
        // )
    );
  }
}
