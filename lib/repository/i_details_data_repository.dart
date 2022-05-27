import '../modules/dados_filtrados/pedido_interno/model/details_request_data.dart';

abstract class IDetailsDataRepository {
  Future<List<DetailsDataModel>> findAllData(String data);
}
