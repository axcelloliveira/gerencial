import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/controller/detalhes_papel_controller.dart';

class RowFilerPapel extends StatelessWidget {
   RowFilerPapel({Key? key}) : super(key: key);

  final DetalhesPapelController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetalhesPapelController>(
      builder: (value) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, right: 0, left: 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                border: Border.all(
                  color: value.filterSelected == 'G'? Colors.blue : Colors.grey,
                ),
              ),
              child: Center(
                child: TextButton(
                  child:  Text(
                    'Gramatura',
                    style: TextStyle(color: value.filterSelected == 'G'? Colors.blue : Colors.grey),
                  ),
                  onPressed: ()=>controller.selectFilter('G'),
                ),
              ),
              width: 100,
              height: 40,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(
                color: value.filterSelected == 'L'? Colors.blue : Colors.grey,
              ),
            ),
            child: Center(
              child: TextButton(
                child:  Text(
                  'Largura',
                  style: TextStyle(color: value.filterSelected == 'L'? Colors.blue : Colors.grey),
                ),
                onPressed: ()=>controller.selectFilter('L'),
              ),
            ),
            width: 100,
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Center(
              child: TextButton(
                  child: const Text(
                    'Peso',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {}),
            ),
            width: 100,
            height: 40,
          ),
        ],
      ),
    );
  }
}
