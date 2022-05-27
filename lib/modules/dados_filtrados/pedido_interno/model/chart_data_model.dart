import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';

class ChartDataModel {
  String? title;
  int? value;
  List<Color>?color;

  ChartDataModel({
    this.title,
    this.value, this.color,
  });

  Map<String, dynamic> toMap() {
    return {
      'TITULO': title,
      'VALOR': value,
    };
  }

  factory ChartDataModel.fromMap(Map<String, dynamic> map) {
    return ChartDataModel(
      title: map['TITULO'] ?? '',
      value: map['VALOR'] ?? '',

      );
  }

  String toJson() => json.encode(toMap());

  factory ChartDataModel.fromJson(String source) =>
      ChartDataModel.fromMap(json.decode(source));
}
