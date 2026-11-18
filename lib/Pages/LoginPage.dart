import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile_dev/Controller/LoginController.dart';

class LoginPages extends StatelessWidget {
  LoginPages({super.key});
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),

              

              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Username'),
                  controller: controller.txtUsername,
                ),
              ),

              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Password'),
                  controller: controller.txtPassword,
                ),
              ),

              const SizedBox(height: 20),

              Obx(
                () => controller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30),
                        width: double.infinity,
                        height: 50,
                        child: OutlinedButton(
                          onPressed: () {
                            controller.login();
                          },
                          child: const Text("Login"),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
