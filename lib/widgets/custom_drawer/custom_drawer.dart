import 'package:flutter/material.dart';

import 'custom_drawer_header.dart';
import 'custom_drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

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
            onTap: (){
            },
          ),
          CustomDrawerItem(
              icon: Icons.auto_awesome_motion_outlined ,
              title: 'Mapeados a produzir',
              onTap: (){}
          ),

          CustomDrawerItem(
              icon: Icons.event_note,
              title: 'Quadro de Entregas',
              onTap: (){}
          ),
          const Divider(),
          CustomDrawerItem(
              icon: Icons.notifications_active,
              title: 'Notificações',
              onTap: (){}
          ),
          CustomDrawerItem(
              icon: Icons.toggle_off_outlined,
              title: 'Trocar Unidade',
              onTap: () {}
          ),
          Padding(
            padding: const EdgeInsets.only(top:210.0),
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
