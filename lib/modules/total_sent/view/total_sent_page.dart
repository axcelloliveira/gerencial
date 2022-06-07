import 'package:flutter/cupertino.dart';
import 'package:norteste_gerencial/modules/total_sent/controller/filter_total_sent_controller.dart';
import 'package:norteste_gerencial/modules/total_sent/view/row_filter_sent.dart';
import 'filter_total_sent_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/constants.dart';

class TotalSentPage extends StatelessWidget {
  TotalSentPage({Key? key}) : super(key: key);
  final FilterTotalSentController controller = Get.find();
  TextEditingController textFilterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Container(
              height: kSize.height / 18,
              width: kSize.width / 1.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[200]),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 11.0, bottom: 4, top: 4),
                  child: TextField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Pesquise aqui',

                      suffixIcon: Icon(Icons.search),
                    ),
                    controller: textFilterController,
                    onChanged: (value) {
                      controller.filterTotalSent(value.toLowerCase());
                    },
                  ),
                ),
              ),
            ),
          ),
          RowFilterSent(),
          const Expanded(child: FilterTotalSentDetails()),
          GetBuilder<FilterTotalSentController>(
            builder: (value) =>
                Center(
                  child: Text(
                    controller.filterSelected.toString(),
                  ),
                ),
          ),
        ],
      ),
    );
  }
}
