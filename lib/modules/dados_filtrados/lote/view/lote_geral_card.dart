import 'package:flutter/material.dart';
import 'package:norteste_gerencial/comuns/format_string.dart';

import '../../../../constants.dart';


class LoteGeralCard extends StatelessWidget {
  const LoteGeralCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return             SizedBox(
      height: kSize.height / 3.3,
      width: kSize.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(top: 8.0, left: 0, right: 0),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: const <BoxShadow>[
                          BoxShadow(
                            color: Colors.black,
                          ),
                        ],
                      ),
                      height: kSize.height / 4.1,
                      width: kSize.width / 1.0,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Center(
                                child: Text(
                                  'Dados do lote: 1234567'
                                      .toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'COMPANHIA INTEGRADA TEXTIL DE PERNAMBUCO',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: const [
                                  Text(
                                    'Maquina: ',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'MT 01 ESPIRAL TESTE',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: const [
                                  Text(
                                    'Produto: ',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'CANUDO DE PAPEL 79,5 X 12 X 800',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: const [
                                  Text(
                                    'Data Produção: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Text(
                                    '10/06/2022',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Operador: ',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'adriano'.toCapitalized(),
                                    style:
                                    const TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: const [
                                  Text(
                                    'Quantidade Produzida: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13),
                                  ),
                                  Text(
                                    '26000 peças',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
