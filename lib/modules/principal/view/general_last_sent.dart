import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/principal/controller/total_sent_controller.dart';
import 'package:norteste_gerencial/modules/principal/view/header_last_sent.dart';
import 'package:norteste_gerencial/modules/principal/view/last_sents_details.dart';
import 'package:intl/intl.dart';

class GeneralLastSent extends StatelessWidget {
  GeneralLastSent({Key? key}) : super(key: key);
  final TotalSentController controller = Get.put(TotalSentController());

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: deviceHeight / 2.2,
      width: deviceWidth / 1.1,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text('Últimos envios'),
              subtitle: Padding(
                padding: const EdgeInsets.all(2.0),
                child: GetBuilder<TotalSentController>(
                  init: controller,
                  builder: (value) => controller.totalSent != 'error'
                      ? Text('Faturamento acumulado R\$ ' +
                          NumberFormat.decimalPattern('pt').format(double.parse(
                              controller.totalSent.replaceAll(',', '.'))))
                      : GestureDetector(
                          onTap: () {
                            controller.returnTotal();
                          },
                          child: const Text(
                            'Clique para recarregar',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                  //trailing: Icon(Icons.),
                ),
              ),
            ),
            //  const Divider(color: Colors.black,),
            const HeaderLastSent(),
            const LastSentDetails(),
            const Padding(
              padding: EdgeInsets.only(left: 250.0, top: 18),
              child: Text(
                'Ver mais...',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
