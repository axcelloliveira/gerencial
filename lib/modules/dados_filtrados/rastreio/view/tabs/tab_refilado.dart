import 'package:flutter/material.dart';

class TabRefilado extends StatelessWidget {
  final String? dataCorte;
  final String? operadorCorte;
  final String? maquinaCorte;

  const TabRefilado({
    Key? key,
    this.dataCorte,
    this.operadorCorte,
    this.maquinaCorte,
  }) : super(key: key);

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
                Text(dataCorte!),
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
                Text(operadorCorte!),
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
                  "MAQUINA CORTE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(maquinaCorte!),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
