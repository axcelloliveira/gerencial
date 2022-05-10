import 'package:flutter/material.dart';
import 'package:norteste_gerencial/modules/principal/view/header_last_sent.dart';
import 'package:norteste_gerencial/modules/principal/view/last_sents_details.dart';

class GeneralLastSent extends StatelessWidget {
  const GeneralLastSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: deviceHeight / 2.4,
      width: deviceWidth / 1.1,
      child: Card(
        child: Column(
          children: const [
            ListTile(
              title: Text('Últimos envios'),
              subtitle: Text('Valor acumulado do mês: R\$ 162.120,00 '),
              //trailing: Icon(Icons.),
            ),
            //  const Divider(color: Colors.black,),
            HeaderLastSent(),
            LastSentDetails(),
            Padding(
              padding: EdgeInsets.only(left: 250.0, top: 8),
              child: Text('Ver mais...', style: TextStyle(color: Colors.blue),),
            )
          ],
        ),
      ),
    );
  }
}
