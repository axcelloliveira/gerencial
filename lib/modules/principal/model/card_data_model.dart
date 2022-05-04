import 'dart:convert';


class CardDataModel {

  String? PESO_PAPEL;
  String? VALOR_PAPEL;
  int?  PROD_DIARIA;
  int?  PROD_ACUMULADA;
  String? PESO_ESTOQUE;
//  String? username;
 // List<UserType> types;

  CardDataModel({
    this.PESO_PAPEL,
    this.VALOR_PAPEL,
    this.PROD_DIARIA,
    this.PROD_ACUMULADA,
    this.PESO_ESTOQUE
   // this.username,
  //  this.types,
  });

  Map<String, dynamic> toMap() {
    return {
      'PESO_PAPEL': PESO_PAPEL,
      'VALOR_PAPEL': VALOR_PAPEL,
      'PROD_DIARIA':PROD_DIARIA,
      'PROD_ACUMULADA':PROD_ACUMULADA,
      'PESO_ESTOQUE':PESO_ESTOQUE
      // 'username': username,
    //  'user_types': types?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory CardDataModel.fromMap(Map<String, dynamic> map) {
    if (map == null) {

    }

    return CardDataModel(
      PESO_PAPEL: map['PESO_PAPEL'] ?? '',
      VALOR_PAPEL: map['VALOR_PAPEL'] ?? '',
      PROD_DIARIA: map['PROD_DIARIA'] ?? '',
      PROD_ACUMULADA: map['PROD_ACUMULADA'] ?? '',
      PESO_ESTOQUE: map['PESO_ESTOQUE'] ?? '',

 //     username: map['username'] ?? '',
    // types: List<UserType>.from(map['user_types']?.map((x) => UserType.fromMap(x) ?? UserType()) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory CardDataModel.fromJson(String source) => CardDataModel.fromMap(json.decode(source));
}