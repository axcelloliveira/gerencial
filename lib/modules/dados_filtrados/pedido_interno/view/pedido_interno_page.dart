import 'package:flutter/material.dart';
import 'chart_request.dart';
import 'header_request.dart';
import 'items_request.dart';

class PedidoInternoPage extends StatelessWidget {
  const PedidoInternoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            children: [
              const HeaderRequest(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
              ),
              const ItemsRequest(),
              //    const Divider(color: Colors.grey,thickness: 0,),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 2.35, top: 7),
                child: const Text(
                  'Acompanhe seu pedido',
                  style: TextStyle(fontSize: 17),
                ),
              ),

              const ChartRequest(),
            ],
          ),
        ),
      ),
    );
  }
}

