import 'package:flutter/material.dart';

class LegendCalendar extends StatelessWidget {
  const LegendCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: const Icon(
        Icons.legend_toggle,
        color: Colors.black,
      ),
      //   onSelected: (item) => handleClick(item),
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(12)),
              ),
              const SizedBox(width: 15),
              const Text('Aguardando Produção'),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadiusDirectional.circular(12)),
              ),
              const SizedBox(width: 15),
              const Text('Em Produção'),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadiusDirectional.circular(12)),
              ),
              const SizedBox(width: 15),
              const Text('Aguardando Corte'),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadiusDirectional.circular(12),
                ),
              ),
              const SizedBox(width: 15),
              const Text('Em Corte'),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadiusDirectional.circular(12)),
              ),
              const SizedBox(width: 15),
              const Text('Estoque'),
            ],
          ),
        ),
        PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadiusDirectional.circular(12)),
              ),
              const SizedBox(width: 15),
              const Text('Enviado'),
            ],
          ),
        ),
      ],
    );
  }
}
