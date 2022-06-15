import 'package:flutter/material.dart';
import 'package:norteste_gerencial/constants.dart';
import 'lote_faturamento_card.dart';
import 'lote_geral_card.dart';
import 'lote_qualidade_card.dart';

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
        child: ListView(
          children: const [
            /// CONTAINER DE DETALHES GERAIS
            LoteGeralCard(),
            /// ROW COM LANÇAMENTOS DE QUALIDADE
            LoteQualidadeCard(),
            ///CONTAINER COM DADOS DE FATURAMENTO
            LoteFaturamentoCard(),
          ],
        ),
      ),
    );
  }
}
