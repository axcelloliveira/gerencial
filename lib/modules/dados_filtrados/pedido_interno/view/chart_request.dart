import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartRequest extends StatefulWidget {
  ChartRequest({Key? key}) : super(key: key);

  @override
  State<ChartRequest> createState() => _ChartRequestState();
}

class _ChartRequestState extends State<ChartRequest> {
  late List<TesteData> _testeData;

  @override
  void initState() {
    _testeData = getTesteData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height / 2.5,
      width: MediaQuery.of(context).size.width,
      child: SfCircularChart(
        title: ChartTitle(text: 'Detalhes do pedido'),
        legend: Legend(isVisible: true),
        series: <CircularSeries>[
          DoughnutSeries<TesteData, String>(
            dataSource: _testeData,
            xValueMapper: (TesteData data, _) => data.continent,
            yValueMapper: (TesteData data, _) => data.teste,
          ),
        ],
      ),
    );
  }
}

List<TesteData> getTesteData() {
  final List<TesteData> testeData = [
    TesteData('Aguard Prod', 1220),
    TesteData('Em Produção', 1480),
    TesteData('Aguard Corte', 985),
    TesteData('Em Corte', 450),
    TesteData('Estoque', 1000),
    TesteData('Enviado', 1000),
  ];
  return testeData;
}

class TesteData {
  TesteData(this.continent, this.teste);

  final String continent;
  final int teste;
}
//14467 certa
//14465 errada
