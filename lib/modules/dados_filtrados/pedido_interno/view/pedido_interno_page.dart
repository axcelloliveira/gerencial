import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'chart_request.dart';
import 'header_request.dart';
import 'items_request.dart';

class PedidoInternoPage extends StatefulWidget {
  const PedidoInternoPage({Key? key}) : super(key: key);

  @override
  State<PedidoInternoPage> createState() => _PedidoInternoPageState();
}

class _PedidoInternoPageState extends State<PedidoInternoPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.blue,
        elevation: 2,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Detalhes do pedido ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const HeaderRequest(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Divider(),
              ),
              const ItemsRequest(),
              ChartRequest(),
            ],
          ),
        ),
      ),
    );
  }
}
