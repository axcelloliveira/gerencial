import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants.dart';
import '../controller/detalhes_papel_controller.dart';

class SearchBarPapel extends StatelessWidget {
  SearchBarPapel({Key? key}) : super(key: key);
  final DetalhesPapelController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetalhesPapelController>(
      builder: (value) => Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          height: kSize.height / 18,
          width: kSize.width / 1.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.grey[200]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 11.0, bottom: 4, top: 4),
              child: TextField(
                decoration:  InputDecoration(
                  border: InputBorder.none,
                  hintText: value.titleSearch,
                  suffixIcon: const  Icon(Icons.search),
                ),
                controller: controller.filterTextController,
                onChanged: (value) {
                  controller.filterDetalhesPapel(value.toLowerCase());
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
