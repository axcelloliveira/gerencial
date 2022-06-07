import 'package:norteste_gerencial/modules/principal/controller/last_sent_controller.dart';
import 'package:norteste_gerencial/modules/principal/model/last_sent_model.dart';
import 'package:norteste_gerencial/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class LastSentDetails extends GetView<LastSentController> {
  const LastSentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt');
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, top: 10),
      child: controller.obx(
        (state) {
          return SizedBox(
            height: deviceHeight / 3.0,
            width: deviceWidth / 1.15,
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 6),
                itemCount: 5,
                itemBuilder: (_, int index) {
                  final LastSentModel item = state[index];
                  return SizedBox(
                    height: 50,
                    width: deviceWidth / 1.1,
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 122,
                          height: 20,
                          child: Text(
                            item.nomeCliente.toString(),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 34),
                          child: item.valorNfe != ''
                              ? Text(formatCurrency.format(double.parse(item
                                  .valorNfe
                                  .toString()
                                  .replaceAll(',', '.'))))
                              : const Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.0, right: 15.0),
                                  child: Text(
                                    'NC',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                        ),
                        Text(item.data.toString().substring(0, 10)),
                      ],
                    ),
                  );
                }),
          );
        },
        onError: (error) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(error!),
                TextButton(
                  onPressed: () => controller.findCardData(),
                  child: const Text('Tentar novamente'),
                ),
              ],
            ),
          );
        },
        onLoading: const CustomLoading(),
      ),
    );
  }
}
