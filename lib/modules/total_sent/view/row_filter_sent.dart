import 'package:norteste_gerencial/modules/total_sent/controller/filter_total_sent_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RowFilterSent extends StatelessWidget {
  RowFilterSent({Key? key}) : super(key: key);

  final FilterTotalSentController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(26.0),
      child: GetBuilder<FilterTotalSentController>(
        builder: (value) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                border: Border.all(
                  color: value.filterSelected == 30 ? Colors.blue : Colors.grey,
                ),
              ),
              child: Center(
                child: TextButton(
                  child: Text(
                    '30 dias',
                    style: TextStyle(
                      color: value.filterSelected == 30
                          ? Colors.blue
                          : Colors.black54,
                    ),
                  ),
                  onPressed: () => controller.selectFilter(30),
                ),
              ),
              width: 100,
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                border: Border.all(
                  color: value.filterSelected == 60 ? Colors.blue : Colors.grey,
                ),
              ),
              child: Center(
                child: TextButton(
                  child: Text(
                    '60 dias',
                    style: TextStyle(
                      color: value.filterSelected == 60
                          ? Colors.blue
                          : Colors.black54,
                    ),
                  ),
                  onPressed: () => controller.selectFilter(60),
                ),
              ),
              width: 100,
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                border: Border.all(
                  color: value.filterSelected == 90 ? Colors.blue : Colors.grey,
                ),
              ),
              child: Center(
                child: TextButton(
                    child: Text(
                      '90 dias',
                      style: TextStyle(
                        color: value.filterSelected == 90
                            ? Colors.blue
                            : Colors.black54,
                      ),
                    ),
                    onPressed: () {
                      if (value.filterSelected != 90) {
                        controller.selectFilter(90);
                      }
                    }),
              ),
              width: 100,
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
