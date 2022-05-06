import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  String? title;
  IconData? icon;
  GestureTapCallback? onTap;
   CustomDrawerItem({Key? key, this.title, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(title!),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
