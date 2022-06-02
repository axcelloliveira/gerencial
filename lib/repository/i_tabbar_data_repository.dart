import 'package:norteste_gerencial/modules/dados_filtrados/rastreio/model/rastreio_data_model.dart';

abstract class ITabBarDataRepository {
  Future<List<RastreioDataModel>> findAllData(String data);
}
