import 'package:norteste_gerencial/modules/detalhes_papel/model/detalhes_papel_model.dart';

abstract class IDetalhesPapelRepository {
  Future<List<DetalhesPapelModel>> findAllData();
}
