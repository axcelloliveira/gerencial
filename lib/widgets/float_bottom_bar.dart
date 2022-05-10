import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:get/get.dart';
import '../controllers/bottom_app_bar_controller.dart';


class FloatBottomBar extends GetView<BottomAppBarController> {
  const FloatBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      GetBuilder<BottomAppBarController>(
          builder: (value)=> FloatingNavbar(
      onTap: (int val) {
        controller.selectScreen(val);
        print(controller.selectedItem);
      },
      backgroundColor: Colors.white,
      selectedItemColor: Colors.white,
      selectedBackgroundColor: Colors.brown[600],
      unselectedItemColor: Colors.black,
      currentIndex: controller.selectedItem,
      elevation: 10,

      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        FloatingNavbarItem(icon: Icons.pie_chart_outline, title: 'Gráficos'),
        FloatingNavbarItem(icon: Icons.settings, title: 'Configurações'),
      ],
          ));
  }
}
