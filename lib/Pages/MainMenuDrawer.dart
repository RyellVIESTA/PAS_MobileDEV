import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_dev/Controller/MainMenuController.dart';
class Mainmenudrawer extends StatelessWidget {
  Mainmenudrawer({super.key});

  final controller = Get.find<Mainmenucontroller>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: const Text('Figo Store'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),

        drawer: NavigationDrawer(
          selectedIndex: controller.selectedIndex.value,

          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(28, 24, 16, 10),
              child: Text(
                'Select Page',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.home),
              label: Text('Home'),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.history),
              label: Text('History'),
            ),

            NavigationDrawerDestination(
              icon: Icon(Icons.person),
              label: Text('Profile'),
            ),
          ],
        ),

        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
    );
  }
}