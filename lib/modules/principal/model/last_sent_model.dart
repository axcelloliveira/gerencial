import 'dart:convert';

class LastSentModel {
  String? data;
  String? valorNfe;
  String? nomeCliente;

  LastSentModel({this.data, this.valorNfe, this.nomeCliente});

  Map<String, dynamic> toMap() {
    return {
      'DATA': data,
      'VALOR_NFE': valorNfe,
      'NOME': nomeCliente,
    };
  }

  factory LastSentModel.fromMap(Map<String, dynamic> map) {
    return LastSentModel(
      data: map['DATA'] ?? '',
      valorNfe: map['VALOR_NFE'] ?? '',
      nomeCliente: map['NOME'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LastSentModel.fromJson(String source) =>
      LastSentModel.fromMap(json.decode(source));
}
