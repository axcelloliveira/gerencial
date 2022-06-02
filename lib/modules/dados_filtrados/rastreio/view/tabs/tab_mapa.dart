import 'package:flutter/material.dart';

class TabMapa extends StatelessWidget {
  final String? nomeCliente;
  final String? pedidoCliente;
  final String? pedidoInterno;
  final String? dataEntrega;
  final String? quantidadePedido;
  final String? mapa;
  final String? referencia1;

  const TabMapa({
    Key? key,
    this.nomeCliente,
    this.pedidoCliente,
    this.pedidoInterno,
    this.dataEntrega,
    this.quantidadePedido,
    this.mapa,
    this.referencia1,
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
                  "CLIENTE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Flexible(child: Text(nomeCliente!)),
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
                  "PEDIDO - CLIENTE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(pedidoCliente!),
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
                  "PEDIDO - INTERNO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(pedidoInterno!),
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
                  "ENTREGA PREVISTA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(dataEntrega!.substring(0,10)),
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
                  "QUANTIDADE PEDIDO",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(quantidadePedido!),
              ],
            ),
          ),
        ),        Padding(
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
                  "MAPA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(mapa!),
              ],
            ),
          ),
        ),        Padding(
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
                  "REFERENCIA",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(referencia1!),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
