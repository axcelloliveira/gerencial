import 'package:norteste_gerencial/modules/dados_filtrados/lote/model/lote_qualidade_model.dart';

abstract class ILoteQualidadeRepository {
  Future<List<LoteQualidadeModel>> findAllData(String data);
}
