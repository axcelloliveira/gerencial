import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:norteste_gerencial/comuns/format_string.dart';
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
    var tag = Localizations.maybeLocaleOf(context)?.toLanguageTag();

    DateTime now = DateTime.now().add(const Duration(days: -1));
    String formattedDate = DateFormat.MMMMd(tag).format(now);
    String date = DateFormat.MMMM(tag).format(DateTime.now());

    return Row(
      children: [
        CardsDetails(
          title: 'Estoque de Papel',
          value: valorCardPapel,
          weight: pesoCardPapel,
          viewValue: true,
          type: 1,
        ),
        const SizedBox(width: 10),
        CardsDetails(
          title: 'Produção diária: $formattedDate',
          value: '',
          weight: cardProdDiaria,
          viewValue: false,
          type: 2,
        ),
        CardsDetails(
          title: 'Produção acumulada: ${date.toCapitalized()}',
          value: '',
          weight: cardProdAcumulada,
          viewValue: false,
          type: 3,
        ),
        CardsDetails(
          title: 'Estoque Expedição',
          value: '',
          weight: pesoCardEstoque,
          viewValue: false,
          type: 4,
        ),
      ],
    );
  }
}
