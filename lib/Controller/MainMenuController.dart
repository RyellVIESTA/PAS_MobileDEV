import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_dev/menu/feat.dart';
import 'package:pas_mobile_dev/menu/profile.dart';
import '../Menu/Home.dart';

class Mainmenucontroller extends GetxController {
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [
    HomePage(),
    FeatPage(),
    ProfilePage(),
  ];
}