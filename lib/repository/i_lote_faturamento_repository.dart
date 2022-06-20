import '../modules/dados_filtrados/lote/model/lote_faturamento_model.dart';

abstract class ILoteFaturamentoRepository {
  Future<List<LoteFaturamentoModel>> findAllData(String data);
}
