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
                height: value.viewSearch ? 45 : 0,
                width: value.viewSearch ? 185 : 0,
                padding: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.only(right: 4.0, left: 4.0),
                  child: TextField(
                    keyboardType: const TextInputType.numberWithOptions(),
                    decoration: InputDecoration(
                      suffixIcon: GetBuilder<MenuPrincipalController>(
                        builder: (value) => Visibility(
                          visible: value.viewSearch,
                          child: IconButton(
                            onPressed: () {

                            },
                            icon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      fillColor: Colors.white,
                      enabled:
                          value.selectedFilter != 'Filtrar por' ? true : false,
                      hintText: value.selectedFilter != 'Filtrar por'
                          ? "${value.selectedFilter}..."
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
                        items: <String>[
                          'Pedido - Interno',
                          'Pedido - Cliente',
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
