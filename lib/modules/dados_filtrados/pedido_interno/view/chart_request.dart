import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/model/chart_data_model.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controller/chart_controller.dart';

class ChartRequest extends GetView<ChartController> {
  const ChartRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Container(
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
      ),        onError: (error) {
      return Padding(
        padding: const EdgeInsets.only(top: 28.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error!),
              TextButton(
                onPressed: () => controller.findChartData(),
                child: const Text('Tentar novamente'),
              ),
            ],
          ),
        ),
      );
    },onLoading: loading(context),
    );
  }
  loading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:48.0),
      child: SizedBox(
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
      ),
    );
  }
}
