import 'package:flutter/material.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/view/row_filter_papel.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/view/searchbar_papel.dart';

import 'list_detalhes_papel.dart';

class DetalhesPapelPage extends StatelessWidget {
  const DetalhesPapelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text(
          'Estoque Detalhado',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SearchBarPapel(),
                const SizedBox(
                  height: 10,
                ),
                RowFilerPapel(),
                const ListDetalhesPapel(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
