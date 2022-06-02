import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'rastreio_tabbar.dart';

class RastreabilidadePage extends StatelessWidget {
  const RastreabilidadePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
     onWillPop: ()async{
       Get.offAndToNamed('/MenuPage');
       return true;
     },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            centerTitle: true,
            foregroundColor: Colors.blue,
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'Detalhes do rastreio ',
              style: TextStyle(color: Colors.black),
            ),
            bottom: const TabBar(
              indicatorColor: Colors.black,
              tabs: <Widget>[
                Text(
                  "Geral",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "N. Refilado",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "Refilado",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "Mapa",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          body: const RastreioTabBar(),
        ),
      ),
    );
  }
}
