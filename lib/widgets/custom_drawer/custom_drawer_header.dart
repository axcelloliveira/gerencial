import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/controllers/custom_drawer_controller.dart';

class CustomDrawerHeader extends StatelessWidget {
  CustomDrawerHeader({Key? key}) : super(key: key);
  final CustomDrawerController controller = Get.put(CustomDrawerController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomDrawerController>(
      init: controller,
      builder: (value) => UserAccountsDrawerHeader(
        accountEmail: Text('${controller.username} - Nordeste Tubetes'),
        margin: EdgeInsets.zero,
        currentAccountPicture: const CircleAvatar(
          backgroundColor: Colors.white,
        ),
        decoration: BoxDecoration(
          color: Colors.brown[300],
        ),
        accountName: const Text('Apollo Master'),
      ),
    );
  }
}
