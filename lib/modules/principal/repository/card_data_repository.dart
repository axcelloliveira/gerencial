import 'package:norteste_gerencial/modules/principal/model/card_data_model.dart';
import '../../../repository/i_card_data_repository.dart';
import '../../../repository/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardDataRepository implements ICardDataRepository {
  final RestClient restClient;

  CardDataRepository(this.restClient);

  @override
  Future<List<CardDataModel>> findAllData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;

    final response = await restClient.get(
        ':$port/eventos2/cardsDiarios', decoder: (body) {
      if (body is List) {
        return body
            .map<CardDataModel>((resp) => CardDataModel.fromMap(resp))
            .toList();
      }
      return body
          .map<CardDataModel>((resp) => CardDataModel.fromMap(resp))
          .toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Cards');
    }
    return response.body!;
  }
}
