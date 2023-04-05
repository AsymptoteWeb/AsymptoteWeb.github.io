import 'package:companywebapp/homescreen_v2.dart';
import 'package:flutter/material.dart';
import 'Additional/responsive.dart';
import 'Additional/constants.dart';
import 'homedscreen_v4.dart';
import 'homescreen.dart';
import 'homescreen_v3.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomeScreen_v4(),
        // ResponsiveWidget(
        //   largeScreen: HomeScreen(),
        //   smallScreen: HomeScreen(),
        // )
    );
  }
}
