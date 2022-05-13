import 'package:norteste_gerencial/modules/principal/model/last_sent_model.dart';

abstract class ILastSentRepository {
  Future<List<LastSentModel>> findLastSentData();

}
