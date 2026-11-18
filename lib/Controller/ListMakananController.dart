import 'package:get/get.dart';
import 'package:pas_mobile_dev/Model/makanan_model.dart';

class Listmakanancontroller extends GetxController {
  final RxList<MakananModel> listMakanan = [
    MakananModel(
    GambarMakanan: 'https://id-live-01.slatic.net/p/8e747961f5767f4ea54b68dff7443b33.jpg', 
    NamaMakanan: 'Nasi Goreng', 
    HargaMakanan: '15.000', 
    RatingMakanan: '4.7', 
    ReviewMakanan: '153 Review'
    ),
    MakananModel(
    GambarMakanan: 'https://dlcdnwebimgs.asus.com/files/media/982b43f2-03f0-4780-b552-cf2a58d515bf/v1/images/m-kv_1.webp', 
    NamaMakanan: 'Nasi Uduk', 
    HargaMakanan: '10.000', 
    RatingMakanan: '3', 
    ReviewMakanan: '112 Review'
    ),
    MakananModel(
    GambarMakanan: 'https://images.samsung.com/is/image/samsung/assets/id/galaxy-tab-s9/feature/galaxy-tab-s9-snap-bottom-mo.jpg', 
    NamaMakanan: 'Ayam Geprek', 
    HargaMakanan: '20.000', 
    RatingMakanan: '5', 
    ReviewMakanan: '597 Review'
    ),
    MakananModel(
    GambarMakanan: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQLIU5mWxf11SlrcDzIwvjY97dqN3I3F2kR07L4uo7D3M_uPf9Yig3PF4&s=10', 
    NamaMakanan: 'Nasi Rames', 
    HargaMakanan: '10.000', 
    RatingMakanan: '4.5', 
    ReviewMakanan: '290 Review'
    ),
    MakananModel(
    GambarMakanan: 'https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/apple-watch-series-9.png', 
    NamaMakanan: 'Chiken Katsu', 
    HargaMakanan: '15.000', 
    RatingMakanan: '5', 
    ReviewMakanan: '567 Review'
    ),
  ].obs;
}
