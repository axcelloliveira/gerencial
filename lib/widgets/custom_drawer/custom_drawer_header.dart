import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountEmail: const Text('Lucca Mattos - Nordeste Tubetes'),
      margin: EdgeInsets.zero,
      currentAccountPicture: const CircleAvatar(backgroundColor: Colors.white,) ,
      decoration: BoxDecoration(
        color: Colors.brown[300],
      ),
      accountName: const Text('Apollo Master'),
    );
  }
}
