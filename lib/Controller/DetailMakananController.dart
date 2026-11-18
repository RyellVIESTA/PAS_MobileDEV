import 'package:get/get.dart';

class Detailmakanancontroller extends GetxController {
  late String gambarMakanan;
  late String namaMakanan;
  late String hargaMakanan;
  late String ratingMakanan;
  late String reviewMakanan;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;
    gambarMakanan = arguments['GambarMakanan'];
    namaMakanan = arguments['NamaMakanan'];
    hargaMakanan = arguments['HargaMakanan'];
    ratingMakanan = arguments['RatingMakanan'];
    reviewMakanan = arguments['ReviewMakanan'];
  }
}

