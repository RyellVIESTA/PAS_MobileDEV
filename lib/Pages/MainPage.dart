import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_dev/Controller/MainMenuController.dart';
import '../Pages/MainMenuDrawer.dart';

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menuController = Get.put(Mainmenucontroller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Figo Store'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        drawer: Mainmenudrawer(),
        body: IndexedStack(
          index: menuController.selectedIndex.value,
          children: menuController.listPages,
          
        ),
      ),
    );
  }
}