import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/principal/controller/top_app_bar_controller.dart';
import 'package:norteste_gerencial/modules/principal/model/card_data_model.dart';
import 'package:norteste_gerencial/modules/principal/view/menu_card.dart';
import 'package:shimmer/shimmer.dart';

class GeneralInfoCard extends GetView<TopAppBarController> {
  const GeneralInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: controller.obx(
        (state) {
          return SizedBox(
            height: 135,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (_, index) {
                final CardDataModel item = state[index];
                return MenuCard(
                  pesoEstoque: item.pesoEstoque.toString(),
                  pesoPapel: item.pesoPapel.toString(),
                  valorPapel: item.valorPapel.toString(),
                  prodDiaria: item.prodDiaria.toString(),
                  prodAcumulada: item.prodAcumulada.toString(),
                );
              },
            ),
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
                  onPressed: () => controller.findCardData(),
                  child: const Text('Tentar novamente'),
                )
              ],
            ),
          );
        },
        onLoading: loading(context),
      ),
    );
  }

  loading(BuildContext context) {
    return SizedBox(
      height: 135,
      width: MediaQuery.of(context).size.width,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const SizedBox(height: 30),
            );
          },
        ),
      ),
    );
  }
}
