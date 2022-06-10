import 'package:flutter/material.dart';
import 'package:norteste_gerencial/constants.dart';
import 'lote_geral_card.dart';

class LoteFilterPage extends StatelessWidget {
  const LoteFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'Lote Filtrado',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        height: kSize.height,
        child: Column(
          children: [
            /// CONTAINER DE DETALHES GERAIS
            const LoteGeralCard(),
            /// ROW COM LANÇAMENTOS DE QUALIDADE
            SizedBox(
              height: kSize.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: kSize.width,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 100,
                    width: kSize.width,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    width: kSize.width,
                    color: Colors.amberAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
