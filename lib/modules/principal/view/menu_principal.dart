import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/widgets/custom_drawer/custom_drawer.dart';
import '../../../comuns/responsive.dart';
import '../../../widgets/float_bottom_bar.dart';
import '../controller/menu_principal_controller.dart';
import 'general_cards/general_info_card.dart';
import 'last_sent/general_last_sent.dart';
import 'animated_search.dart';

class MenuPrincipal extends GetView<MenuPrincipalController> {
 const  MenuPrincipal({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          'Nordeste Tubetes' ,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 3),
            child: IconButton(
                onPressed: () => controller.setStateSearch(),
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                )),
          )
        ],
      ),
      drawer: CustomDrawer(
        selectedPage: 'menuPage',
      ),
      extendBody: true,
      bottomNavigationBar: const FloatBottomBar(),
      body: Responsive(
        mobile: SingleChildScrollView(
          child: Column(
            children: [
              AnimatedSearch(),
              const SizedBox(height: 25),
              const GeneralInfoCard(),
              const SizedBox(height: 10),
              GeneralLastSent(),
              //LastSent(),
            ],
          ),
        ),
        desktop: const Text("ESTÁ EM DESKTOP"),
      ),
    );
  }
}
