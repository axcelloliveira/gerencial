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
        ),
        const SizedBox(
          width: 10,
        ),
        CardsDetails(
          title: 'Produção diária: $formattedDate',
          value: '',
          weight: cardProdDiaria,
          viewValue: false,
        ),
        CardsDetails(
          title: 'Produção acumulada: ${date.toCapitalized()}',
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

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
