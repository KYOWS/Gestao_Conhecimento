import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'app/routes/routes.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    //navigatorKey: Get.key,
    initialRoute: '/',
    getPages: MyRoutes.routes,
    //home: MyHomePage(),
    theme: ThemeData(
      primaryColor: Colors.yellow[700],
      visualDensity: VisualDensity.adaptivePlatformDensity,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
    ),
    routingCallback: (routing) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.blue[700],
        systemNavigationBarDividerColor: Colors.blue[700],
        statusBarColor: Colors.blue[700],
        statusBarBrightness: Brightness.dark,
        //super.initState();
      ));
    },
  ));
}
