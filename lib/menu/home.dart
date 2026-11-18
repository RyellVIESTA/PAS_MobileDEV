import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_dev/Controller/ListMakananController.dart';
import 'package:pas_mobile_dev/Routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(Listmakanancontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.listMakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.listMakanan[index];

                return InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.DetaiMakananPage,
                      arguments: {
                        'GambarMakanan': makanan.GambarMakanan.toString(),
                        'NamaMakanan': makanan.NamaMakanan.toString(),
                        'HargaMakanan': makanan.HargaMakanan.toString(),
                        'ReviewMakanan': makanan.ReviewMakanan.toString(),
                        'RatingMakanan': makanan.RatingMakanan.toString(),
                      },
                    );
                  },
                  child: Container(
                    width: 160,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          makanan.GambarMakanan,
                          height: 100,
                          width: 140,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          makanan.NamaMakanan,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          makanan.HargaMakanan,
                          
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
