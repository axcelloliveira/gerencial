import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/comuns/format_string.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/model/lote_qualidade_model.dart';
import '../../../../constants.dart';
import '../../../../widgets/custom_loading.dart';
import '../controller/lote_qualidade_controller.dart';

class ChartData {
  ChartData(this.x, this.y, this.y1);

  final int x;
  final double y;
  final double y1;
}

class LoteQualidadeCard extends GetView<LoteQualidadeController> {
  const LoteQualidadeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(1, 35, 23),
      ChartData(2, 38, 49),
      ChartData(3, 34, 12),
    ];
    return controller.obx(
      (state) => SizedBox(
        height: kSize.height / 3.5,
        child: SizedBox(
          height: kSize.height / 3.3,
          width: kSize.width / 1.01,
          child: Column(
            children: [
              Align(
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
                      height: kSize.height / 4.0,
                      width: kSize.width / 1.01,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListView.builder(
                            itemCount: state.length,
                            itemBuilder: (context, index) {
                              final LoteQualidadeModel item = state[index];
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
                                            'Média das análises de qualidade'
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
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Peso Inteiro: ',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text(
                                          item.pesoInteiro.toString() != ''
                                              ? item.pesoInteiro
                                                  .toStringAsPrecision(5)
                                              : 'Não Cadastrado',
                                          style:  TextStyle(
                                              fontSize: 13,
                                              color: item.pesoInteiro
                                                  .toString() !=
                                                  '0'
                                                  ? Colors.grey
                                                  : Colors.red,                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Peso Cortado: ',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          item.pesoRefilado.toString() != '0'
                                              ? item.pesoRefilado
                                                  .toStringAsPrecision(5)
                                              : 'Não cadastrado',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: item.pesoRefilado
                                                          .toString() !=
                                                      '0'
                                                  ? Colors.grey
                                                  : Colors.red,
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
                                          'Comprimento Inteiro: ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          item.comprimentoInteiro != '0'
                                              ? item.comprimentoInteiro
                                                  .toStringAsPrecision(5)
                                              : 'Não Cadastrado',
                                          style:  TextStyle(
                                              fontSize: 13,
                                              color: item.comprimentoInteiro
                                                  .toString() !=
                                                  '0'
                                                  ? Colors.grey
                                                  : Colors.red,
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
                                          'Comprimento Cortado: ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          item.comprimentoRefilado.toString() !=
                                                  '0'
                                              ? item.comprimentoRefilado
                                                  .toStringAsPrecision(5)
                                              : 'Não Cadastrado',
                                          style:  TextStyle(
                                              fontSize: 13,
                                              color: item.comprimentoRefilado
                                                  .toString() !=
                                                  '0'
                                                  ? Colors.grey
                                                  : Colors.red,                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Responsável por Análises: ',
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          item.responsavel
                                              .toString()
                                              .toCapitalized(),
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
                                  //         style: TextStyle(color: Colors.blue),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                ],
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),onLoading: Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height / 10,
      ),
      child: const CustomLoading(),
    ),onError: (error){
        return const SizedBox();
    }
    );
  }
}

///          Container(
//             height: 1000,
//             width: kSize.width,
//             child: SfCartesianChart(
//
//               // Columns will be rendered back to back
//                 enableSideBySideSeriesPlacement: true,
//                 series: <ChartSeries<ChartData, int>>[
//                   ColumnSeries<ChartData, int>(
//                       dataSource: chartData,
//                       width: 0.3,
//
//                       xValueMapper: (ChartData data, _) => data.x,
//                       yValueMapper: (ChartData data, _) => data.y
//                   ),
//
//                   ColumnSeries<ChartData, int>(
//                       opacity:0.9,
//                       width: 0.2,
//                       dataSource: chartData,
//                       xValueMapper: (ChartData data, _) => data.x,
//                       yValueMapper: (ChartData data, _) => data.y1
//                   ),
//                 ]
//             ),
//           ),
