import 'package:flutter/material.dart';

class ItemsRequest extends StatelessWidget {
  const ItemsRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Itens do pedido'),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: ListTile(
                  //     leading: const Icon(Icons.list),
                  trailing: const Text(
                    "GFG",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                  title: Text(
                    "CANUDO DE PAPEL 3X14X350 AMARELO LISTRADO COM TARJA TESTE TESTE TESTE $index",
                    style: const TextStyle(fontSize: 14.0),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(left: 1.0, top: 8),
                    child: Text(
                      'Precisão de entrega: 28/06/2022',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
