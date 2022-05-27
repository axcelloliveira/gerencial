import 'dart:convert';

class ProductsDataModel {
  String? produto;
  int? quantidade;
  String? dataEntrega;

  ProductsDataModel({
    this.produto,
    this.quantidade, this.dataEntrega,
  });

  Map<String, dynamic> toMap() {
    return {
      'PRODUTO': produto,
      'QUANTIDADE': quantidade,
      'DATA_ENTREGA': dataEntrega,
    };
  }

  factory ProductsDataModel.fromMap(Map<String, dynamic> map) {
    return ProductsDataModel(
      produto: map['PRODUTO'] ?? '',
      quantidade: map['QUANTIDADE'] ?? '',
      dataEntrega: map['DATA_ENTREGA'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductsDataModel.fromJson(String source) =>
      ProductsDataModel.fromMap(json.decode(source));
}
