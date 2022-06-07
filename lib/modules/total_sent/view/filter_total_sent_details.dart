import 'package:norteste_gerencial/modules/total_sent/controller/filter_total_sent_controller.dart';
import 'package:norteste_gerencial/modules/total_sent/model/filter_total_sent_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'custom_filter_sent_loading.dart';

class FilterTotalSentDetails extends GetView<FilterTotalSentController> {
  const FilterTotalSentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt');
    return Padding(
      padding: const EdgeInsets.only(left: 0.0, top: 10),
      child: controller.obx(
        (state) {
          return ListView.builder(
              padding: const EdgeInsets.only(top: 6),
              itemCount: state.length,
              itemBuilder: (_, int index) {
                final FilterTotalSentModel item = state[index];
                return SizedBox(
                  height: 50,
                  width: deviceWidth / 1.1,
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
                            ? Text(formatCurrency.format(double.parse(
                                item.valorNfe.toString().replaceAll(',', '.'))))
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
              },
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
                  onPressed: () => controller.findTotalSent(),
                  child: const Text('Tentar novamente'),
                ),
              ],
            ),
          );
        },
        onLoading: const CustomFilterSentLoading(),
      ),
    );
  }
}
