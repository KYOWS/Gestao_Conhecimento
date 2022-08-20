import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Controller extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    scaffoldKey.currentState.openDrawer();
  }
}
