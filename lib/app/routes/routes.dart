//import 'package:dmo/app/ui/android/home.dart';
//import 'package:dmo/app/ui/android/mundo.dart';
//import 'package:dmo/app/ui/android/orings.dart';
//import 'package:dmo/app/ui/android/medidas.dart';
//import 'package:dmo/app/ui/android/rolamentos.dart';
import 'package:get/get.dart';
import 'package:gestao_conhecimento/app/ui/web/home/home.dart';

class MyRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => Home(),
    ),
  ];
}
