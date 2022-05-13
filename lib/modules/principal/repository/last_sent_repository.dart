import 'package:norteste_gerencial/modules/principal/model/last_sent_model.dart';
import 'package:norteste_gerencial/repository/i_last_sent_repository.dart';
import 'package:norteste_gerencial/repository/rest_client.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LastSentRepository implements ILastSentRepository {
  final RestClient restClient;

  LastSentRepository(this.restClient);

  @override
  Future<List<LastSentModel>> findLastSentData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String port = prefs.getString('port')!;

    final response = await restClient.get(
        ':$port/eventos2/ultimosRomaneios', decoder: (body) {
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
