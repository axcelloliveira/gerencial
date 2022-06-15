import 'dart:convert';

class LoteQualidadeModel {
  double? pesoInteiro;
  double? pesoRefilado;
  double? comprimentoInteiro;
  double? comprimentoRefilado;
  String? responsavel;

  LoteQualidadeModel(
      {this.pesoInteiro,
      this.pesoRefilado,
      this.comprimentoInteiro,
      this.comprimentoRefilado,
      this.responsavel});

  Map<String, dynamic> toMap() {
    return {
      'PESO_INTEIRO': pesoInteiro,
      'PESO_REFILADO': pesoRefilado,
      'COMPRIMENTO_INTEIRO': comprimentoInteiro,
      'COMPRIMENTO_REFILADO': comprimentoRefilado,
      'USUARIO': responsavel,
    };
  }

  factory LoteQualidadeModel.fromMap(Map<String, dynamic> map) {
    return LoteQualidadeModel(
      pesoInteiro: map['PESO_INTEIRO'] ?? '',
      pesoRefilado: map['PESO_REFILADO'] ?? '',
      comprimentoInteiro: map['COMPRIMENTO_INTEIRO'],
      comprimentoRefilado: map['COMPRIMENTO_REFILADO'] ?? '',
      responsavel: map['USUARIO'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoteQualidadeModel.fromJson(String source) =>
      LoteQualidadeModel.fromMap(json.decode(source));
}
