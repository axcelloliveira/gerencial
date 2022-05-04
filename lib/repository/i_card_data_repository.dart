import '../modules/principal/model/card_data_model.dart';

abstract class ICardDataRepository {

  Future<List<CardDataModel>> findAllData();

}