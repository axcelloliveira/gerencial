import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/model/chart_data_model.dart';
import 'package:norteste_gerencial/widgets/custom_loading.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controller/chart_controller.dart';

class ChartRequest extends GetView<ChartController> {
  const ChartRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width / 2.35, top: 7),
            child: const Text(
              'Acompanhe seu pedido',
              style: TextStyle(fontSize: 17),
            ),
          ),
          Container(
            color: Colors.grey[100],
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: SfCircularChart(
              palette: const <Color>[
                Colors.red,
                Colors.orange,
                Colors.blue,
                Colors.green
              ],
              // title: ChartTitle(text: 'Acompanhe seu pedido',  alignment: ChartAlignment.near ),
              legend: Legend(isVisible: true, position: LegendPosition.bottom),
              series: <CircularSeries>[
                DoughnutSeries<ChartDataModel, String>(
                  dataLabelSettings: const DataLabelSettings(
                      showZeroValue: false, isVisible: true),
                  dataSource: state,
                  xValueMapper: (ChartDataModel data, _) => data.title,
                  yValueMapper: (ChartDataModel data, _) => data.value,
                ),
              ],
            ),
          ),
        ],
      ),
      onError: (error) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Nenhum pedido encontrado',
                      style: TextStyle(color: Colors.red)),
                ],
              ),
            ),
          ),
        );
      },
      onLoading: const CustomLoading(),
    );
  }
}
