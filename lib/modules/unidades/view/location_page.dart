import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/unidades/controller/location_controller.dart';
import 'package:norteste_gerencial/widgets/custom_drawer/custom_drawer.dart';

class LocationPage extends StatelessWidget {
  LocationPage({Key? key}) : super(key: key);
  final LocationController controller = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: () => moveToMenu(),
      child: Scaffold(
        drawer: CustomDrawer(selectedPage: 'locationPage'),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Unidades Produtoras ',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GetBuilder <LocationController> (
  init: controller,
      builder: (value) =>
      ListView(
            children: [
              Card(
                child: GetBuilder<LocationController>(
               //   init: controller,
                  builder: (value) => SwitchListTile(
                    title: const Text('Nordeste Tubetes'),
                    subtitle: const Text('Dias D\'Avila - BA'),
                    onChanged: (bool value) => controller.changeNT(),
                    value: controller.switchValueNT,
                    activeColor: Colors.green,
                  ),
                ),
              ),
              Card(
                child: GetBuilder<LocationController>(
                  builder: (value) => SwitchListTile(
                    title: const Text('NE Tubetes'),
                    subtitle: const Text('Americana - SP'),
                    onChanged: (bool value) => controller.changeNE(),
                    value: controller.switchValueNE,
                    activeColor: Colors.green,
                  ),
                ),
              ),
              Card(
                child: GetBuilder<LocationController>(
                  builder: (value) => SwitchListTile(
                    title: const Text('IPTC'),
                    subtitle: const Text('Mandaguaçu - PR'),
                    onChanged: (bool value) => controller.changeIP(),
                    value: controller.switchValueIP,
                    activeColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),),
        ),
      ),
    );
  }

  moveToMenu() {
    Get.offAndToNamed('/MenuPage');
  }
}
