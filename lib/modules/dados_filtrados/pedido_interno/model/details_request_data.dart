import 'dart:convert';

class DetailsDataModel {
  String? nome;
  String? dataComposicao;
  String? pedido;
  String? pedidoCliente;
  String? codigo;

  DetailsDataModel({
    this.nome,
    this.dataComposicao,
    this.pedido,
    this.pedidoCliente,
    this.codigo
  });

  Map<String, dynamic> toMap() {
    return {
      'NOME': nome,
      'DATA_COMPOSICAO': dataComposicao,
      'PEDIDO': pedido,
      'PEDIDO_CLIENTE': pedidoCliente,
      'CODIGO': codigo,
    };
  }

  factory DetailsDataModel.fromMap(Map<String, dynamic> map) {
    return DetailsDataModel(
      nome: map['NOME'] ?? '',
      dataComposicao: map['DATA_COMPOSICAO'] ?? '',
      pedido: map['PEDIDO'] ?? '',
      pedidoCliente: map['PEDIDO_CLIENTE'] ?? '',
      codigo: map['CODIGO'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsDataModel.fromJson(String source) =>
      DetailsDataModel.fromMap(json.decode(source));
}

