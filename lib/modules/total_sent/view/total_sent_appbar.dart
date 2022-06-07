import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/total_sent/controller/filter_total_sent_controller.dart';

class TotalSentAppBar extends StatelessWidget {
  TotalSentAppBar({Key? key}) : super(key: key);
  final FilterTotalSentController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () async {
            controller.filterTotalSent('santeno');
          },
          tooltip: 'Mais Filtros',
        ),
      ],
      actionsIconTheme: const IconThemeData(color: Colors.black),
      elevation: 1,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: const Text(
        'Romaneios',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
