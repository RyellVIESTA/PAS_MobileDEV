import 'Pages/MainPage.dart';
import 'Pages/LoginPage.dart';

import 'package:get/get.dart';

import 'Pages/DetailMakananPage.dart';

class Routes {
  static const String mainMenu = '/mainMenu';
  static const String LoginPage = '/loginPage';
  static const String DetaiMakananPage = '/detailPage';

  static final pages = [
    GetPage(name: mainMenu, page: () => MainMenuPage()),
    GetPage(name: LoginPage, page: () => LoginPages()),
    GetPage(name: DetaiMakananPage, page: () => Detailmakananpage()),
  ];
}
