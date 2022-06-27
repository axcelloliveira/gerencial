import 'package:flutter/material.dart';

import '../../../constants.dart';


class SearchBarPapel extends StatelessWidget {
  const SearchBarPapel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return                 Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: kSize.height / 18,
        width: kSize.width / 1.25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[200]),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 11.0, bottom: 4, top: 4),
            child: TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Busque a gramatura',
                suffixIcon: Icon(Icons.search),
              ),
              //   controller: controller.filterTextController,
              onChanged: (value) {
                //         controller.filterTotalSent(value.toLowerCase());
              },
            ),
          ),
        ),
      ),
    );
  }
}
