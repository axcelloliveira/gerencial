import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../comuns/responsive.dart';
import '../controller/menu_principal_controller.dart';

class TopAppBar extends StatelessWidget {
  TopAppBar({Key? key}) : super(key: key);

  final MenuPrincipalController controller = Get.put(MenuPrincipalController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0, left: 1, top: 50),
      child: GetBuilder<MenuPrincipalController>(
        builder: (value) => Row(
          mainAxisAlignment: value.viewSearch
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Visibility(
              visible: Responsive.isDesktop(context),
              child: const Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  "Overview",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.drag_handle_outlined),
            ),
            //    const SizedBox(width: 15,),

            GetBuilder<MenuPrincipalController>(
              // especificar o tipo como Controller
              init: MenuPrincipalController(), // inicializar o Controller
              builder: (value) => AnimatedContainer(
                //color: Colors.white,
                //height: value.viewSearch? 200: 0,
                width: value.viewSearch ? 270 : 100 - 100,
                padding: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.white,
                ),
                duration: const Duration(milliseconds: 500),
                child: const TextField(
                  decoration: InputDecoration(
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    fillColor: Colors.white,
                    hintText: "Buscando por pedidos...",
                    //   icon: Icon(CupertinoIcons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            GetBuilder<MenuPrincipalController>(
              // especificar o tipo como Controller
              init: MenuPrincipalController(), // inicializar o Controller
              builder: (value) => AnimatedContainer(
                //color: Colors.white,
                height: value.viewSearch? 0: 30,
                width: value.viewSearch ? 0 : 245,
                padding: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  // color: Colors.white,
                ),
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Nordeste Tubetes'),
                ),
              ),
            ),
            IconButton(
              splashColor: Colors.white,
              onPressed: () => controller.setStateSearch(),
              icon: const Icon(CupertinoIcons.search),
              iconSize: 14,
            ),
            // Expanded(
            //   child: _nameAndProfilePicture(
            //     context,
            //     " ",
            //   ),
            //),
          ],
        ),
      ),
    );
  }

  // Widget _nameAndProfilePicture(BuildContext context, String username) {
  //   return GetBuilder<MenuPrincipalController>(
  //     builder: (value) => Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         // Text(
  //         //   username,
  //         //   style: const TextStyle(
  //         //     fontWeight: FontWeight.bold,
  //         //     fontSize: 16,
  //         //   ),
  //         // ),
  //         GetBuilder<MenuPrincipalController>(
  //           // especificar o tipo como Controller
  //           init: MenuPrincipalController(), // inicializar o Controller
  //           builder: (value) => Visibility(
  //             visible: value.viewSearch,
  //             child: const Padding(
  //               padding:  EdgeInsets.only(left: 1.0),
  //               child: CircleAvatar(
  //                 backgroundColor: Colors.grey,
  //                   //backgroundImage: NetworkImage(imageUrl),
  //                   ),
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}

///2,188 alterações de São Paulo
