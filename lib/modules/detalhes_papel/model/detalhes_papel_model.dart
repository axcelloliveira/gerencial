import 'dart:convert';

class DetalhesPapelModel {
  var quantidade;
  var produto;
  var gramatura;
  var largura;

  DetalhesPapelModel(
      {this.quantidade, this.produto, this.gramatura, this.largura});

  Map<String, dynamic> toMap() {
    return {
      'SUM': quantidade,
      'PRODUTO': produto,
      'GRAMATURA': gramatura,
      'LARGURA': largura,
    };
  }

  factory DetalhesPapelModel.fromMap(Map<String, dynamic> map) {
    return DetalhesPapelModel(
      quantidade: map['SUM'] ?? '',
      produto: map['PRODUTO'] ?? '',
      largura: map['LARGURA'] ?? '',
      gramatura: map['GRAMATURA'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DetalhesPapelModel.fromJson(String source) =>
      DetalhesPapelModel.fromMap(jsonDecode(source));
}
