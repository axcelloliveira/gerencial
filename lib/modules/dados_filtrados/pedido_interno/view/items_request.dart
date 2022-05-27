import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/controller/products_controller.dart';
import '../../../../widgets/custom_loading.dart';
import '../model/products_data_model.dart';

class ItemsRequest extends GetView<ProductsController> {
  const ItemsRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => ExpansionTile(
          title: const Text(
            'Itens do pedido',
            style: TextStyle(fontSize: 17),
          ),
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: state.length,
                itemBuilder: (BuildContext context, int index) {
                  final ProductsDataModel item = state[index];

                  return Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 4),
                    child: ListTile(
                      title: Text(
                        item.produto.toString(),
                        style: const TextStyle(
                            fontSize: 14.0, color: Colors.black),
                      ),
                      subtitle: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 1.0, top: 8),
                            child: Row(
                              children: [
                                const Text(
                                  'Quantidade de peças: ',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  item.quantidade.toString(),
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1.0, top: 8),
                            child: Row(
                              children: [
                                const Text(
                                  'Previsão de entrega: ',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Text(
                                  item.dataEntrega!.substring(0, 10),
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),onLoading: const CustomLoading(),
    );
  }
}
