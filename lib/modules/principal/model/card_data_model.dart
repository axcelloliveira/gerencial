import 'dart:convert';

class CardDataModel {
  String? pesoPapel;
  String? valorPapel;
  String? prodDiaria;
  String? prodAcumulada;
  String? pesoEstoque;

//  String? username;
  // List<UserType> types;

  CardDataModel(
      {this.pesoPapel,
      this.valorPapel,
      this.prodDiaria,
      this.prodAcumulada,
      this.pesoEstoque
      // this.username,
      //  this.types,
      });

  Map<String, dynamic> toMap() {
    return {
      'PESO_PAPEL': pesoPapel,
      'VALOR_PAPEL': valorPapel,
      'PROD_DIARIA': prodDiaria,
      'PROD_ACUMULADA': prodAcumulada,
      'PESO_ESTOQUE': pesoEstoque
      // 'username': username,
      //  'user_types': types?.map((x) => x?.toMap())?.toList(),
    };
  }

  factory CardDataModel.fromMap(Map<String, dynamic> map) {

    return CardDataModel(
      pesoPapel: map['PESO_PAPEL'] ?? '',
      valorPapel: map['VALOR_PAPEL'] ?? '',
      prodDiaria: map['PROD_DIARIA'] ?? '',
      prodAcumulada: map['PROD_ACUMULADA'] ?? '',
      pesoEstoque: map['PESO_ESTOQUE'] ?? '',

      //     username: map['username'] ?? '',
      // types: List<UserType>.from(map['user_types']?.map((x) => UserType.fromMap(x) ?? UserType()) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory CardDataModel.fromJson(String source) =>
      CardDataModel.fromMap(json.decode(source));
}
