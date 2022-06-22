import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/model/lote_faturamento_model.dart';
import 'package:norteste_gerencial/widgets/custom_loading.dart';
import '../../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/controller/lote_faturamento_controller.dart';

class LoteFaturamentoCard extends GetView<LoteFaturamentoController> {
  const LoteFaturamentoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => SizedBox(
        height: kSize.height / 4,
        child: SizedBox(
          height: kSize.height / 3.7,
          width: kSize.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0, left: 0, right: 0),
                  child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                color: Colors.black,
                              ),
                            ],
                          ),
                          height: kSize.height / 4.7,
                          width: kSize.width / 1.0,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: ListView.builder(
                              itemCount: state.length,
                              itemBuilder: (BuildContext context, int index) {
                                final LoteFaturamentoModel item = state[index];

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0.0),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'FATURAMENTO DESTE LOTE'
                                                  .toUpperCase(),
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Romaneio Relacionado: ',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            item.codRomaneio.toString(),
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Quantidade deste Item: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Text(
                                            item.quantidade.toString(),
                                            style: const TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Nota Fiscal Relacionada: ',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            item.numeroNfe.toString() != ''
                                                ? item.numeroNfe.toString()
                                                : 'Romaneio não conciliado',
                                            style: const TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Data de Faturamento: ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          ),
                                          Text(
                                            item.dataNfe
                                                .toString()
                                                .substring(0, 10),
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // GestureDetector(
                                    //   onTap: () {
                                    //     print('aaaaaaaaa');
                                    //   },
                                    //   child: const Padding(
                                    //     padding: EdgeInsets.only(
                                    //         top: 8.0, left: 8, right: 12),
                                    //     child: Align(
                                    //       alignment:
                                    //           AlignmentDirectional.bottomEnd,
                                    //       child: Text(
                                    //         'Detalhes',
                                    //         style:
                                    //             TextStyle(color: Colors.blue),
                                    //       ),
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      onLoading: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
        child: const CustomLoading(),
      ),onError: (error){
        return const SizedBox();
    }
    );
  }
}
