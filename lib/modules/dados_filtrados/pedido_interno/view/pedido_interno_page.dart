import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chart_request.dart';
import 'header_request.dart';
import 'items_request.dart';

class PedidoInternoPage extends StatelessWidget {
  const PedidoInternoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:()async{
        Get.offAndToNamed('/MenuPage');
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Colors.blue,
          elevation: 0,
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
              children: const [
                HeaderRequest(),
                SizedBox(height: 25,),
                ItemsRequest(),
                SizedBox(height: 10),
                ChartRequest(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
