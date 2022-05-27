import '../modules/dados_filtrados/pedido_interno/model/products_data_model.dart';

abstract class IProductsDataRepository {
  Future<List<ProductsDataModel>> findAllData(String data);
}