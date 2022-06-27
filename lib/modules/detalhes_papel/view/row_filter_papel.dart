import 'package:flutter/material.dart';

class RowFilerPapel extends StatelessWidget {
  const RowFilerPapel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, right: 0, left: 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              border: Border.all(
                color: Colors.blue,
              ),
            ),
            child: Center(
              child: TextButton(
                child: const Text(
                  'Gramatura',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {},
              ),
            ),
            width: 100,
            height: 40,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            border: Border.all(
              color: Colors.blue,
            ),
          ),
          child: Center(
            child: TextButton(
              child: const Text(
                'Largura',
                style: TextStyle(color: Colors.blue),
              ),
              onPressed: () {},
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
              color: Colors.blue,
            ),
          ),
          child: Center(
            child: TextButton(
                child: const Text(
                  'Peso',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {}),
          ),
          width: 100,
          height: 40,
        ),
      ],
    );
  }
}
