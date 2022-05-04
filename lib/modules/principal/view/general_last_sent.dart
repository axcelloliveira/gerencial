import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class GeneralLastSent extends GetView {
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
          children: [
            const ListTile(
              title: Text('Últimos envios'),
              subtitle: Text('Valor acumulado do mês: R\$ 162.120,00 '),
              //trailing: Icon(Icons.),
            ),
            //  const Divider(color: Colors.black,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('Cliente', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text('Valor', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text('Data de envio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, top: 10),
              child: Container(
                height: deviceHeight / 4.5,
                width: deviceWidth / 1.15,
                child: ListView.builder(

                    padding: const EdgeInsets.only(top: 10),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        width: deviceWidth/1.1,
                        //color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text('ITABAIANA'),
                            Text('R\$ 15.000,00'),
                            Text('04/05/2022'),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 250.0, top: 8),
              child: Text('Ver mais...'),
            )
          ],
        ),
      ),
    );
  }
}
