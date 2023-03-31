import 'package:flutter/material.dart';
import 'Additional/constants.dart';

mobileTopBar(GlobalKey<ScaffoldState> key) => AppBar(
  leading: IconButton(
    icon: Icon(Icons.menu, color: active,),
    onPressed: (){
    key.currentState?.openDrawer();
  },
  ),
  title: Image.asset("images/logotest.png", fit: BoxFit.fitHeight,),
  centerTitle: true,
  elevation: 0,
  backgroundColor: bgColor,
);