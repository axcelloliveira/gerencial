import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButtom extends StatelessWidget {
  const RoundedButtom({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: kSize.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kPrimaryColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child: const Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),

      ),
    );
  }
}
