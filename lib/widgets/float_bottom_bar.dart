import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class FloatBottomBar extends StatelessWidget {
  const FloatBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingNavbar(
      onTap: (int val) {
      },
      backgroundColor: Colors.white,
      selectedItemColor: Colors.white,
      selectedBackgroundColor: Colors.brown[600],
      unselectedItemColor: Colors.black,
      currentIndex: 0,
      elevation: 10,
      items: [
        FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        FloatingNavbarItem(icon: Icons.pie_chart_outline, title: 'Gráficos'),
        FloatingNavbarItem(icon: Icons.settings, title: 'Configurações'),
      ],
    );
  }
}
