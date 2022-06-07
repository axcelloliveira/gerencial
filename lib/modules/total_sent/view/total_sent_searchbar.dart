import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants.dart';
import '../controller/filter_total_sent_controller.dart';

class TotalSentSearchBar extends StatelessWidget {
   TotalSentSearchBar({Key? key}) : super(key: key);
   final FilterTotalSentController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        height: kSize.height / 18,
        width: kSize.width / 1.25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 11.0, bottom: 4, top: 4),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Busque o cliente',
                suffixIcon: Icon(Icons.search),
              ),
              controller: controller.filterTextController,
              onChanged: (value) {
                controller.filterTotalSent(value.toLowerCase());
              },
            ),
          ),
        ),
      ),
    );
  }
}
