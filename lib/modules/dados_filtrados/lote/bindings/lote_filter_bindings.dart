import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/controller/lote_faturamento_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/controller/lote_geral_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/controller/lote_qualidade_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/repository/lote_faturamento_repository.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/lote/repository/lote_qualidade_repository.dart';
import 'package:norteste_gerencial/repository/i_lote_faturamento_repository.dart';
import 'package:norteste_gerencial/repository/i_lote_geral_repository.dart';
import '../../../../repository/i_lote_qualidade_repository.dart';
import '../repository/lote_geral_repository.dart';

class LoteFilterBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<ILoteGeralRepository>(LoteGeralRepository(Get.find()));
    Get.lazyPut(() => LoteGeralController(Get.find()));
    Get.put<ILoteQualidadeRepository>(LoteQualidadeRepository(Get.find()));
    Get.lazyPut(() => LoteQualidadeController(Get.find()));
    Get.put<ILoteFaturamentoRepository>(LoteFaturamentoRepository(Get.find()));
    Get.lazyPut(() => LoteFaturamentoController(Get.find()));
  }
}
