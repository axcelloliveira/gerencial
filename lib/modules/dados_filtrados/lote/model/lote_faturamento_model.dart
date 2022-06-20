import 'dart:convert';

class LoteFaturamentoModel {
  int? quantidade;
  String? codRomaneio;
  int? numeroNfe;
  String? dataRmn;
  String? dataNfe;

  LoteFaturamentoModel(
      {this.quantidade,
      this.codRomaneio,
      this.numeroNfe,
      this.dataRmn,
      this.dataNfe});

  Map<String, dynamic> toMap() {
    return {
      'SUM': quantidade,
      'CODIGO': codRomaneio,
      'NUMERO_NFE': numeroNfe,
      'DATA': dataRmn,
      'DATA_NFE': dataNfe,
    };
  }

  factory LoteFaturamentoModel.fromMap(Map<String, dynamic> map) {
    return LoteFaturamentoModel(
      quantidade: map['SUM'] ?? '',
      codRomaneio: map['CODIGO'] ?? '',
      numeroNfe: map['NUMERO_NFE'] ?? '',
      dataRmn: map['DATA'] ?? '',
      dataNfe: map['DATA_NFE'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory LoteFaturamentoModel.fromJson(String source) =>
      LoteFaturamentoModel.fromMap(jsonDecode(source));
}
