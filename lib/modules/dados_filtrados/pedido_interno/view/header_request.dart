import 'package:flutter/material.dart';

class HeaderRequest extends StatelessWidget {
  const HeaderRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1,
            child: const Center(
              child: Center(
                child: Text(
                  'COMPANHIA INTEGRADA TEXTIL DE PERNAMBUCO',
                  style: TextStyle(fontSize: 15),
                ),
                //   subtitle: Text('Companhia integrada textil de pernambuco'),
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: const [
                Text(
                  'Data de composição: ',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  '17/05/2022',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10),
            child: Row(
              children: const [
                Text(
                  'Pedido Interno`: ',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  '210420200',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 10),
            child: Row(
              children: const [
                Text(
                  'Pedido Cliente: ',
                  style: TextStyle(fontSize: 13),
                ),
                Text(
                  '15551-1',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
