import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../comuns/custom_snackbar.dart';
import '../controller/menu_principal_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AnimatedSearch extends StatelessWidget {
  AnimatedSearch({Key? key}) : super(key: key);
  final MenuPrincipalController controller = Get.put(MenuPrincipalController());
  final TextEditingController data = TextEditingController();

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
                    onSubmitted: (String value2) async {
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      await prefs.setString(
                          'filter', controller.textFilter.text);
                      if (controller.textFilter.text != '') {
                        if (value.selectedFilter == 'Pedido - Interno') {
                          await prefs.setString('request_type', 'interno');
                          value.dataFilter(value.selectedFilter.toString());
                        } else if (value.selectedFilter == 'Pedido - Cliente') {
                          await prefs.setString('request_type', 'cliente');
                          value.dataFilter(value.selectedFilter.toString());
                        } else if (value.selectedFilter == 'Lote') {
                          if (controller.textFilter.text.length < 7) {
                            showSnackBar(
                                message:
                                    'Insira um lote válido. Lotes são compostos apenas por 7 numeros, '
                                    'sem letras ou simbolos.',
                                title: 'Lote invalido',
                                backgroundColor: Colors.red);
                          } else {
                            value.dataFilter(value.selectedFilter.toString());
                          }
                        } else if (value.selectedFilter == 'Rastreio') {
                          if (controller.textFilter.text.isNum) {
                            value.dataFilter(value.selectedFilter.toString());
                          } else {
                            showSnackBar(
                                message:
                                    'Insira um rastreio válido. Rastreios são compostos apenas por numeros, '
                                    'sem letras ou simbolos.',
                                title: 'Rastreio invalido',
                                backgroundColor: Colors.red);
                          }
                        }
                      }
                    },
                    controller: controller.textFilter,
                    decoration: InputDecoration(
                      suffixIcon: GetBuilder<MenuPrincipalController>(
                        builder: (value) => Visibility(
                          visible: value.viewSearch,
                          child: IconButton(
                            onPressed: () => _function(value),
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
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Visibility(
                    visible: value.viewSearch,
                    child: DropdownButton<String>(
                        onTap: () {
                          controller.textFilter.text = '';
                        },
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

  _function(value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('filter', controller.textFilter.text);
    if (controller.textFilter.text != '') {
      if (value.selectedFilter == 'Pedido - Interno') {
        await prefs.setString('request_type', 'interno');
        value.dataFilter(value.selectedFilter.toString());
      } else if (value.selectedFilter == 'Pedido - Cliente') {
        await prefs.setString('request_type', 'cliente');
        value.dataFilter(value.selectedFilter.toString());
      } else if (value.selectedFilter == 'Lote') {
        if (controller.textFilter.text.length < 7) {
          showSnackBar(
              message:
                  'Insira um lote válido. Lotes são compostos apenas por 7 numeros, '
                  'sem letras ou simbolos.',
              title: 'Lote invalido',
              backgroundColor: Colors.red);
        } else {
          value.dataFilter(value.selectedFilter.toString());
        }
      } else if (value.selectedFilter == 'Rastreio') {
        if (controller.textFilter.text.isNum) {
          value.dataFilter(value.selectedFilter.toString());
        } else {
          showSnackBar(
              message:
                  'Insira um rastreio válido. Rastreios são compostos apenas por numeros, '
                  'sem letras ou simbolos.',
              title: 'Rastreio invalido',
              backgroundColor: Colors.red);
        }
      }
    }
  }
}
