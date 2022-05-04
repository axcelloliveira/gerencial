import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../comuns/responsive.dart';
import '../../../widgets/float_bottom_bar.dart';
import '../controller/menu_principal_controller.dart';
import 'general_info_card.dart';
import 'general_last_sent.dart';
import 'top_app_bar.dart';

class MenuPrincipal extends GetView<MenuPrincipalController> {
  const MenuPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const FloatBottomBar(),
      body: Responsive(
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              TopAppBar(),
              const SizedBox(
                height: 25,
              ),
              const GeneralInfoCard(),
              const SizedBox(
                height: 10,
              ),
              const GeneralLastSent(),
              //LastSent(),
            ],
          ),
        ),
        desktop: const Text("ESTÁ EM DESKTOP"),
      ),
    );
  }
}
