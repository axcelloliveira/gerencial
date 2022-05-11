import 'package:norteste_gerencial/modules/principal/model/last_sent_model.dart';
import 'package:norteste_gerencial/repository/i_last_sent_repository.dart';
import 'package:norteste_gerencial/repository/rest_client.dart';


class LastSentRepository implements ILastSentRepository {
  final RestClient restClient;

  LastSentRepository(this.restClient);

  @override
  Future<List<LastSentModel>> findLastSentData() async {
    final response = await restClient.get(
        ':8083/eventos2/ultimosRomaneios', decoder: (body) {
      if (body is List) {
        return body
            .map<LastSentModel>((resp) => LastSentModel.fromMap(resp))
            .toList();
      }
      return body.map<LastSentModel>((resp) => LastSentModel.fromMap(resp)).toList();
    });
    if(response.hasError){
      throw Exception('Erro ao buscar romaneios');
    }
    return response.body!;
  }
}
