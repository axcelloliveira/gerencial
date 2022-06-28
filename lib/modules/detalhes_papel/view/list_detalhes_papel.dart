import 'package:norteste_gerencial/modules/detalhes_papel/controller/detalhes_papel_controller.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/model/detalhes_papel_model.dart';

import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:get/get.dart';

import '../../total_sent/view/custom_filter_sent_loading.dart';

class ListDetalhesPapel extends GetView<DetalhesPapelController> {
  const ListDetalhesPapel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: kSize.height,
      child: Padding(
        padding: const EdgeInsets.only(left: 0.0, top: 8),
        child: controller.obx(
          (state) {
            return ListView.builder(
              padding: const EdgeInsets.only(top: 6),
              itemCount: state.length,
              itemBuilder: (_, int index) {
                final DetalhesPapelModel item = state[index];
                return Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: SizedBox(width: 60, child: Text(item.gramatura.toString().removeAllWhitespace)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:25.0),
                          child: SizedBox(width: 60,child: Text(item.largura.toString().removeAllWhitespace)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: SizedBox(width: 60,child: Text(item.quantidade.toString())),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          onError: (error) {
            return SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(error!),
                  TextButton(
                    onPressed: () => controller.findDetalhesPapel(),
                    child: const Text('Tentar novamente'),
                  ),
                ],
              ),
            );
          },
          onLoading: const CustomFilterSentLoading(),
        ),
      ),
    );
  }
}
