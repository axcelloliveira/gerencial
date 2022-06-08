import 'package:norteste_gerencial/modules/total_sent/controller/filter_total_sent_controller.dart';
import 'package:norteste_gerencial/modules/total_sent/view/total_sent_searchbar.dart';
import 'package:norteste_gerencial/modules/total_sent/view/total_sent_appbar.dart';
import 'package:norteste_gerencial/modules/total_sent/view/row_filter_sent.dart';
import 'package:norteste_gerencial/constants.dart';
import 'filter_total_sent_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TotalSentPage extends StatelessWidget {
  TotalSentPage({Key? key}) : super(key: key);
  final FilterTotalSentController controller = Get.find();
  final TextEditingController textFilterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed('/MenuPage');
        return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(kSize.width, 50), child: TotalSentAppBar()),
        body: Column(
          children: [
            TotalSentSearchBar(),
            RowFilterSent(),
            const FilterTotalSentDetails(),
          ],
        ),
      ),
    );
  }
}
