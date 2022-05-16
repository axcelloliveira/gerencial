import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:norteste_gerencial/modules/principal/view/general_cards/cards_details.dart';

class MenuCard extends StatelessWidget {
  final String pesoEstoque;
  final String pesoPapel;
  final String valorPapel;
  final String prodDiaria;
  final String prodAcumulada;

  const MenuCard(
      {Key? key,
      required this.pesoEstoque,
      required this.prodDiaria,
      required this.pesoPapel,
      required this.prodAcumulada,
      required this.valorPapel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatCurrency = NumberFormat.simpleCurrency(locale: 'pt');

    String valorCardPapel =
        formatCurrency.format(double.parse(valorPapel.replaceAll(',', '.')));
    String pesoCardPapel = NumberFormat.decimalPattern('pt')
        .format(double.parse(pesoPapel.replaceAll(',', '.')));
    String pesoCardEstoque = NumberFormat.decimalPattern('pt')
        .format(double.parse(pesoEstoque.replaceAll(',', '.')));
    String cardProdDiaria = NumberFormat.decimalPattern('pt')
        .format(double.parse(prodDiaria.replaceAll(',', '.')));
    String cardProdAcumulada = NumberFormat.decimalPattern('pt')
        .format(double.parse(prodAcumulada.replaceAll(',', '.')));

    return Row(
      children: [
        CardsDetails(
          title: 'Estoque de Papel',
          value: valorCardPapel,
          weight: pesoCardPapel,
          viewValue: true,
        ),
        const SizedBox(
          width: 10,
        ),
        CardsDetails(
          title: 'Produção Diária',
          value: '',
          weight: cardProdDiaria,
          viewValue: false,
        ),
        CardsDetails(
          title: 'Produção Acumulada',
          value: '',
          weight: cardProdAcumulada,
          viewValue: false,
        ),
        CardsDetails(
          title: 'Estoque Expedição',
          value: '',
          weight: pesoCardEstoque,
          viewValue: false,
        ),
      ],
    );
  }
}
