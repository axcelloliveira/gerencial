import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/controllers/custom_drawer_controller.dart';
import 'custom_drawer_header.dart';
import 'custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({Key? key}) : super(key: key);
  final CustomDrawerController controller = Get.put(CustomDrawerController());


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const CustomDrawerHeader(),
          CustomDrawerItem(
            title: 'Home',
            icon: Icons.home,
            onTap: () {},
          ),
          CustomDrawerItem(
              icon: Icons.auto_awesome_motion_outlined,
              title: 'Mapeados a produzir',
              onTap: () {},
          ),
          CustomDrawerItem(
              icon: Icons.event_note,
              title: 'Quadro de Entregas',
              onTap: () {},
       ),
          const Divider(),
          CustomDrawerItem(
              icon: Icons.notifications_active,
              title: 'Notificações',
              onTap: () {},
          ),
          CustomDrawerItem(
              icon: Icons.toggle_off_outlined,
              title: 'Trocar Unidade',
              onTap: () {},

          ),
          const Divider(),
          CustomDrawerItem(icon: Icons.logout, title: 'Logout', onTap: () {}),
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 4),
            child: ListTile(
              title: const Text('Versão 1.0.0'),
              onTap: () {},
            ),
          ),
        ],
      ),
      //  backgroundColor: Colors.black,
      );
  }
}