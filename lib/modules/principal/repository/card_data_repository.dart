import 'package:norteste_gerencial/modules/principal/model/card_data_model.dart';
import '../../../repository/i_card_data_repository.dart';
import '../../../repository/rest_client.dart';

class CardDataRepository implements ICardDataRepository {
  final RestClient restClient;

  CardDataRepository(this.restClient);

  @override
  Future<List<CardDataModel>> findAllData() async {
    final response = await restClient.get(
        'http://10.100.10.161:8083/eventos2/cardsDiarios', decoder: (body) {
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
