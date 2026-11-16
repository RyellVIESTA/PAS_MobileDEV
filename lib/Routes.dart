import 'Pages/MainPage.dart';
import 'package:get/get.dart';

class Routes {
  static const String mainMenu = '/mainMenu';

  static final pages = [
    GetPage(
      name: mainMenu,
      page: () => MainMenu(),
    ),
  ];
}