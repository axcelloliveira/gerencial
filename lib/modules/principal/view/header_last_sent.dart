import 'package:flutter/material.dart';


class HeaderLastSent extends StatelessWidget {
  const HeaderLastSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        Text('Cliente', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Text('Valor', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        Text('Data de envio', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ],
    );
  }
}
