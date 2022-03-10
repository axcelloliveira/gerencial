import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButtom extends StatelessWidget {
  const RoundedButtom({
    Key? key,
    required this.title,
    required this.backGroundColor,
    required this.borderColor,
    required this.textColor,
    required this.type,
  }) : super(key: key);
  final String title;
  final Color backGroundColor;
  final Color borderColor;
  final Color textColor;
  final String type;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: Colors.white,
      onTap: (){
        if(type == 'login'){
          print("login");
        }else{
          print('register');
        }
      },
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: kSize.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: backGroundColor,
            border: Border.all(color: borderColor)


        ),
        padding: const EdgeInsets.symmetric(vertical: 20),
        alignment: Alignment.center,
        child:  Text(
          title,

          style:  TextStyle(
            color: textColor,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),

      ),
    );
  }
}
