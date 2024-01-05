import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/home.dart';

void main() {
  runApp(GetMaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
      home:HomeScreen(),
      debugShowCheckedModeBanner: false,

  ));
}

