// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

class RastreioDataModel {
  var rastreio;
  var dividido;
  var numeroNfe;
  var data;
  var dataNfe;
  var codRmn;
  var tara;
  var pesoBruto;
  var pesoLiquido;
  var quantidade;
  var dataCorte;
  var operadorCorte;
  var codMaquina;
  var status;
  var dataProducao;
  var operadorProducao;
  var maquinaCorte;
  var quantProducao;
  var pesoAmostra;
  var lote;
  var referencia;
  var quantPedido;
  var dataEntrega;
  var codigoMapa;
  var maquinaProducao;
  var codCabeca;
  var produto;
  var pedidoCliente;
  var pedido;
  var codCliente;
  var nomeCliente;

  RastreioDataModel(
      {this.rastreio,
      this.dividido,
      this.numeroNfe,
      this.data,
      this.dataNfe,
      this.codRmn,
      this.tara,
      this.pesoBruto,
      this.pesoLiquido,
      this.quantidade,
      this.dataCorte,
      this.operadorCorte,
      this.codMaquina,
      this.status,
      this.dataProducao,
      this.operadorProducao,
      this.maquinaCorte,
      this.quantProducao,
      this.pesoAmostra,
      this.lote,
      this.referencia,
      this.quantPedido,
      this.dataEntrega,
      this.codigoMapa,
      this.maquinaProducao,
      this.codCabeca,
      this.produto,
      this.pedidoCliente,
      this.pedido,
      this.codCliente,
      this.nomeCliente});

  Map<String, dynamic> toMap() {
    return {
      'RASTREIO': rastreio,
      'DIVIDIDO': dividido,
      'NUMERO_NFE': numeroNfe,
      'DATA': data,
      'DATA_NFE': dataNfe,
      'COD_RMN': codRmn,
      'TARA': tara,
      'PESO_BRUTO': pesoBruto,
      'LIQUIDO': pesoLiquido,
      'QUANTIDADE': quantidade,
      'DT_CORTE': dataCorte,
      'OPERADOR': operadorCorte,
      'COD_MAQUINA': codMaquina,
      'STATUS': status,
      'DT_PRODUCAO': dataProducao,
      'OPERADOR_PRODUCAO': operadorProducao,
      'MQ_PRODUCAO': maquinaCorte,
      'QT_PRODUCAO': quantProducao,
      'LOTE': lote,
      'PESO_AMOSTRA': pesoAmostra,
      'REFERENCIA1': referencia,
      'QT_PEDIDO': quantPedido,
      'DT_ENTREGA': dataEntrega,
      'CODIGO_MAPA': codigoMapa,
      'MAQUINA': maquinaProducao,
      'COD_CABECA': codCabeca,
      'PRODUTO': produto,
      'PEDIDO_CLIENTE': pedidoCliente,
      'PEDIDO': pedido,
      'COD_CLIENTE': codCliente,
      'NOME': nomeCliente,
    };
  }

  factory RastreioDataModel.fromMap(Map<String, dynamic> map) {
    return RastreioDataModel(
      rastreio: map['RASTREIO'] ?? '',
      dividido: map['DIVIDIDO'] ?? '',
      numeroNfe: map['NUMERO_NFE'] ?? '',
      data: map['DATA'] ?? '',
      dataNfe: map['DATA_NFE'] ?? '',
      codRmn: map['COD_RMN'] ?? '',
      tara: map['TARA'] ?? '',
      pesoBruto: map['PESO_BRUTO'] ?? '',
      pesoLiquido: map['LIQUIDO'] ?? '',
      quantidade: map['QUANTIDADE'] ?? '',
      dataCorte: map['DT_CORTE'] ?? '',
      operadorCorte: map['OPERADOR'] ?? '',
      codMaquina: map['COD_MAQUINA'] ?? '',
      status: map['STATUS'] ?? '',
      dataProducao: map['DT_PRODUCAO'] ?? '',
      operadorProducao: map['OPERADOR_PRODUCAO'] ?? '',
      maquinaCorte: map['MQ_PRODUCAO'] ?? '',
      quantProducao: map['QT_PRODUCAO'] ?? '',
      lote: map['LOTE'] ?? '',
      pesoAmostra: map['PESO_AMOSTRA'] ?? '',
      referencia: map['REFERENCIA1'] ?? '',
      quantPedido: map['QT_PEDIDO'] ?? '',
      dataEntrega: map['DT_ENTREGA'] ?? '',
      codigoMapa: map['CODIGO_MAPA'] ?? '',
      maquinaProducao: map['MAQUINA'] ?? '',
      codCabeca: map['COD_CABECA'] ?? '',
      produto: map['PRODUTO'] ?? '',
      pedidoCliente: map['PEDIDO_CLIENTE'] ?? '',
      pedido: map['PEDIDO'] ?? '',
      codCliente: map['COD_CLIENTE'] ?? '',
      nomeCliente: map['NOME'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RastreioDataModel.fromJson(String source) =>
      RastreioDataModel.fromMap(json.decode(source));
}
