import 'package:norteste_gerencial/modules/dados_filtrados/lote/model/lote_geral_model.dart';

abstract class ILoteGeralRepository {
  Future<List<LoteGeralModel>> findAllData(String data);
}
