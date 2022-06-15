import 'dart:convert';

class LoteGeralModel {
  String? cliente;
  String? produto;
  String? lote;
  String? data;
  String? operador;
  String? maquina;

  LoteGeralModel(
      {this.cliente,
      this.produto,
      this.lote,
      this.data,
      this.operador,
      this.maquina});

  Map<String, dynamic> toMap() {
    return {
      'NOME': cliente,
      'PRODUTO': produto,
      'LOTE': lote,
      'DATA': data,
      'OPERADOR': operador,
      'NOME_MAQUINA': maquina,
    };
  }

  factory LoteGeralModel.fromMap(Map<String, dynamic> map) {
    return LoteGeralModel(
      cliente: map['NOME'] ?? '',
      produto: map['PRODUTO'] ?? '',
      lote: map['LOTE'] ?? '',
      data: map['DATA'] ?? '',
      operador: map['OPERADOR'] ?? '',
      maquina: map['NOME_MAQUINA'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoteGeralModel.fromJson(String source) =>
      LoteGeralModel.fromMap(jsonDecode(source));
}
