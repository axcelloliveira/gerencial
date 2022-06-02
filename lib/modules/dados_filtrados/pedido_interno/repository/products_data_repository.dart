import 'package:norteste_gerencial/repository/i_products_data_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../repository/rest_client.dart';
import '../model/products_data_model.dart';

class ProductsDataRepository implements IProductsDataRepository {
  final RestClient restClient;

  ProductsDataRepository(this.restClient);

  @override
  Future<List<ProductsDataModel>> findAllData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;
    String type = prefs.getString('request_type')!;
    String? url;
    if (type == '') {
    } else if (type == 'interno') {
      url = ':$port/eventos2/listaProdutosPedido?pPedido=$data';
    } else if (type == 'cliente') {
      url = ':$port/eventos2/listaProdutosCliente?pPedido=$data';
    }

    final response =
    await restClient.get(url!, decoder: (body) {
      if (body is List) {
        return body
            .map<ProductsDataModel>((resp) => ProductsDataModel.fromMap(resp))
            .toList();
      }
      return body
          .map<ProductsDataModel>((resp) => ProductsDataModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }

}
