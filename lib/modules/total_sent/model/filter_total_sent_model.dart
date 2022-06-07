// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

class FilterTotalSentModel {
  String? data;
  var valorNfe;
  String? nomeCliente;
  String? dataNfe;

  FilterTotalSentModel(
      {this.data, this.valorNfe, this.nomeCliente, this.dataNfe});

  Map<String, dynamic> toMap() {
    return {
      'DATA': data,
      'VALOR_NFE': valorNfe,
      'NOME': nomeCliente,
      'DATA_NFE': dataNfe,
    };
  }

  factory FilterTotalSentModel.fromMap(Map<String, dynamic> map) {
    return FilterTotalSentModel(
      data: map['DATA'] ?? '',
      valorNfe: map['VALOR_NFE'] ?? '',
      nomeCliente: map['NOME'] ?? '',
      dataNfe: map['DATA_NFE'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FilterTotalSentModel.fromJson(String source) =>
      FilterTotalSentModel.fromMap(json.decode(source));
}
