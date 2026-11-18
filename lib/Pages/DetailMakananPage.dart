import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_dev/Controller/DetailMakananController.dart';

class Detailmakananpage extends StatelessWidget {
  const Detailmakananpage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Detailmakanancontroller());

    return Scaffold(
      appBar: AppBar(title: const Text("Detail Makanan"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Image.network(controller.gambarMakanan, fit: BoxFit.contain),
          ),

          const SizedBox(height: 20),

          Text(
            controller.namaMakanan,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.orange, size: 20),
              const SizedBox(width: 5),
              Text(
                controller.ratingMakanan,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              Text(
                "${controller.reviewMakanan} Reviews",
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          ),

          const SizedBox(height: 15),

          Text(
            controller.hargaMakanan,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                "Beli Sekarang",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
