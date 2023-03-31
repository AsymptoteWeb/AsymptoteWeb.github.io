import 'package:flutter/material.dart';
import 'Additional/constants.dart';
import 'home.dart';
import 'homescreen.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(AsymptoteHome());

class AsymptoteHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );

    // return MaterialApp(
    //   theme: ThemeData(
    //     primaryColor: kPrimaryAddOnLightColor,
    //     backgroundColor: kPrimaryBackgroundLightColor,
    //   ),
    //   home: HomeScreen(),
    // );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}