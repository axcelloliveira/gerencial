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
      padding: const EdgeInsets.all(13.0),
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
                  print(item.PROD_ACUMULADA.toString());
                   return MenuCard(
                  pesoEstoque: item.PESO_ESTOQUE.toString(),
                     pesoPapel: item.PESO_PAPEL.toString(),
                     valorPapel: item.VALOR_PAPEL.toString(),
                     prodDiaria: item.PROD_DIARIA.toString(),
                     prodAcumulada: item.PROD_ACUMULADA.toString(),

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
                  child: Text('double.parse(source)'),
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
//ow(
//           children:  [
//           const  MenuCard(
//               title: 'Estoque de papel',
//             ),
//        const     MenuCard(
//               title: 'Aguardando produção',
//             ),
//             MenuCard(
//               title: 'Produção acumulada do mês ${DateTime.now().month}',
//             ),
//           const  MenuCard(
//               title: 'Produção do dia anterior',
//             ),
//           const  MenuCard(
//               title: 'Estoque de Produto Acabado',
//             ),
//           ],
//         ),
