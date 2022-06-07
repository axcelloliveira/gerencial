
import 'dart:ui';

class Meeting {
  Meeting({
    this.codCabeca,
    this.dataComposicao,
    this.dataEntrega,
    this.background,
    this.notes,
  });

  String? codCabeca;
  DateTime? dataComposicao;
  DateTime? dataEntrega;
  Color? background;
  String? notes;
}