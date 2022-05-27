import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/controller/details_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/model/details_request_data.dart';
import '../../../../widgets/custom_loading.dart';

class HeaderRequest extends GetView<DetailsController> {
  const HeaderRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx((state) => SizedBox(
          height: MediaQuery.of(context).size.height / 6,
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (_, index) {
                final DetailsDataModel item = state[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Center(
                            child: Text(
                              item.nome!,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 3,),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            const Text(
                              'Data de composição: ',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              item.dataComposicao!.substring(0,10),
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10),
                        child: Row(
                          children: [
                            const Text(
                              'Pedido Interno: ',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              item.pedido!,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10),
                        child: Row(
                          children: [
                            const Text(
                              'Pedido Cliente: ',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              item.pedidoCliente!,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 10),
                        child: Row(
                          children: [
                            const Text(
                              'Código do mapa: ',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              item.codigo!,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }),
        ),onLoading: const CustomLoading(),
    );
  }
}
