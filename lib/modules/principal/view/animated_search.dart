import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/menu_principal_controller.dart';

class AnimatedSearch extends StatelessWidget {
  AnimatedSearch({Key? key}) : super(key: key);
  final MenuPrincipalController controller = Get.put(MenuPrincipalController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 15, top: 20),
      child: GetBuilder<MenuPrincipalController>(
        builder: (value) => Row(
          mainAxisAlignment: value.viewSearch
              ? MainAxisAlignment.center
              : MainAxisAlignment.center,
          children: [
            GetBuilder<MenuPrincipalController>(
              // especificar o tipo como Controller
              init: MenuPrincipalController(), // inicializar o Controller
              builder: (value) => AnimatedContainer(
                //color: Colors.white,
                height: value.viewSearch ? 45 : 0,
                width: value.viewSearch ? 200 : 0,
                padding: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  //    color: Colors.brown
                  // color: Colors.white,
                ),
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      fillColor: Colors.white,
                      hintText: value.selectedFilter != 'Filtrar por'
                          ? "Buscando por ${value.selectedFilter}..."
                          : "Como deseja filtrar?",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            GetBuilder<MenuPrincipalController>(
              builder: (value) => Visibility(
                visible: value.viewSearch,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 38,
                  width: 115,
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.blueGrey,
                          width: 0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(8)),
                  child: Visibility(
                    visible: value.viewSearch,
                    child: DropdownButton<String>(
                        hint: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(value.selectedFilter.toString()),
                        ),
                        //    value: dropdownValue,
                        items: <String>[
                          'Pedidos',
                          'Lote',
                          'Rastreio',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                              value: value, child: Text(value));
                        }).toList(),
                        onChanged: (String? newValue) {
                          value.setSelectedFilter(newValue);
                        },
                        underline:
                            DropdownButtonHideUnderline(child: Container())),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
