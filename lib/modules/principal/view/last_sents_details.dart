import 'package:norteste_gerencial/modules/principal/controller/last_sent_controller.dart';
import 'package:norteste_gerencial/modules/principal/model/last_sent_model.dart';
import 'package:norteste_gerencial/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LastSentDetails extends GetView<LastSentController> {
  const LastSentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, top: 10),
      child: controller.obx(
        (state) {
          return SizedBox(
            height: deviceHeight / 4.5,
            width: deviceWidth / 1.15,
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 6),
                itemCount: 4,
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
                            width: 120,
                            height: 20,
                            child: Text(item.nomeCliente.toString(),
                                overflow: TextOverflow.ellipsis)),
                        const Padding(
                          padding: EdgeInsets.only(left: 0.0, right: 28),
                          child: Text('850.542.121,00'),
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
