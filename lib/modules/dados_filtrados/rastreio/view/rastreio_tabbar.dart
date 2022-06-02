import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/rastreio/controller/tabbar_controller.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/rastreio/model/rastreio_data_model.dart';
import 'tabs/tab_geral.dart';
import 'tabs/tab_mapa.dart';
import 'tabs/tab_n_refilado.dart';
import 'tabs/tab_refilado.dart';
import 'loading/tabs_loading.dart';

class RastreioTabBar extends GetView<TabBarController> {
  const RastreioTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
        (state) => TabBarView(
              children: [
                ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (BuildContext context, int index) {
                    final RastreioDataModel item = state[index];
                    return TabGeral(
                      produto: item.produto.toString(),
                      numeroNfe: item.numeroNfe.toString(),
                      dataNfe: item.dataNfe.toString(),
                      romaneio: item.codRmn.toString(),
                      data: item.data.toString(),
                      pesoLiquido: item.pesoLiquido.toString(),
                      pesoBruto: item.pesoBruto.toString(),
                      quantidade: item.quantidade.toString(),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (BuildContext context, int index) {
                    final RastreioDataModel item = state[index];
                    return TabNRefilado(
                      dataProducao: item.dataProducao.toString(),
                      operadorProducao: item.operadorProducao.toString(),
                      maquinaProducao: item.maquinaProducao.toString(),
                      quantidadeProducao: item.quantProducao.toString(),
                      pesoAmostra: item.pesoAmostra.toStringAsPrecision(4),
                      lote: item.lote.toString(),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (BuildContext context, int index) {
                    final RastreioDataModel item = state[index];
                    return TabRefilado(
                      dataCorte: item.dataCorte.toString(),
                      operadorCorte: item.operadorCorte.toString(),
                      maquinaCorte: item.maquinaCorte.toString(),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (BuildContext context, int index) {
                    final RastreioDataModel item = state[index];
                    return TabMapa(
                      nomeCliente: item.nomeCliente.toString(),
                      pedidoCliente: item.pedidoCliente.toString(),
                      pedidoInterno: item.pedido.toString(),
                      dataEntrega: item.dataEntrega.toString(),
                      quantidadePedido: item.quantPedido.toString(),
                      mapa: item.codigoMapa.toString(),
                      referencia1: item.referencia.toString(),
                    );
                  },
                ),
              ],
            ),
        onLoading: const TabsLoading(), onError: (error) {
      return Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Dados não encontrados'),
          TextButton(
            onPressed: () => controller.findCardData(),
            child: const Text('Tentar Novamente'),
          ),
        ],
      ));
    });
  }
}
