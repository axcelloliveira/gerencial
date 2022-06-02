import 'package:flutter/material.dart';

class TabNRefilado extends StatelessWidget {
  final String? dataProducao;
  final String? operadorProducao;
  final String? maquinaProducao;
  final String? quantidadeProducao;
  final String? pesoAmostra;
  final String? lote;

  const TabNRefilado(
      {Key? key,
      this.dataProducao,
      this.operadorProducao,
      this.maquinaProducao,
      this.quantidadeProducao,
      this.pesoAmostra,
      this.lote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "DATA PRODUÇÃO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(dataProducao!),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "OPERADOR",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(operadorProducao!),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "MAQUINA PRODUÇÃO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(maquinaProducao!),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "QUANTIDADE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(quantidadeProducao!),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "PESO AMOSTRA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(pesoAmostra!),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "LOTE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(lote!),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
