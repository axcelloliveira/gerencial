import 'package:flutter/material.dart';

class TabGeral extends StatelessWidget {
  final String? produto;
  final String? numeroNfe;
  final String? dataNfe;
  final String? romaneio;
  final String? data;
  final String? pesoLiquido;
  final String? pesoBruto;
  final String? quantidade;

  const TabGeral(
      {Key? key,
      this.produto,
      this.numeroNfe,
      this.dataNfe,
      this.romaneio,
      this.data,
      this.pesoLiquido,
      this.pesoBruto,
      this.quantidade})
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
                  "PRODUTO ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Flexible(child: Text(produto!)),
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
                  "NFE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                dataNfe != ''
                    ? Text(numeroNfe!)
                    : const Text(
                        'Ainda não faturado',
                        style: TextStyle(color: Colors.red),
                      )
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
                  "DATA NFE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                dataNfe != ''
                    ? Text(dataNfe!.substring(0, 10))
                    : const Text(
                        'Ainda não faturado',
                        style: TextStyle(color: Colors.red),
                      )
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
                  "ROMANEIO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(romaneio!),
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
                  "DATA DO ROMANEIO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(data!.substring(0, 10)),
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
                  "PESO LÍQUIDO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(pesoLiquido!),
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
                  "PESO BRUTO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(pesoBruto!),
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
                Text(quantidade!),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
