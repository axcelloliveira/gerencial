import 'package:norteste_gerencial/modules/dados_filtrados/lote/bindings/lote_filter_bindings.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/pedido_interno/view/pedido_interno_page.dart';
import 'package:norteste_gerencial/modules/dados_filtrados/rastreio/view/rastreabilidade_page.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/bindings/detalhes_papel_bindings.dart';
import 'package:norteste_gerencial/modules/detalhes_papel/view/detalhes_papel_page.dart';
import 'package:norteste_gerencial/modules/principal/view/last_sent/general_last_sent.dart';
import 'modules/dados_filtrados/lote/view/lote_filter_page.dart';
import 'modules/dados_filtrados/pedido_interno/bindings/filter_data_bindings.dart';
import 'package:norteste_gerencial/modules/principal/view/menu_principal.dart';
import 'package:norteste_gerencial/modules/unidades/view/location_page.dart';
import 'modules/dados_filtrados/rastreio/bindings/rastreio_bindings.dart';
import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'modules/principal/view/general_cards/general_info_card.dart';
import 'package:norteste_gerencial/modules/splash/splash_page.dart';
import 'package:norteste_gerencial/bindings/general_bindings.dart';
import 'package:norteste_gerencial/modules/login/login_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'modules/principal/bindings/top_app_bar_bindings.dart';
import 'modules/calendar/view/calendar_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'modules/total_sent/bindings/filter_total_sent_bindings.dart';
import 'modules/total_sent/view/total_sent_page.dart';

void main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/lato/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  LicenseRegistry.addLicense(() async* {
    final license =
        await rootBundle.loadString('google_fonts/Work_Sans/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GeneralBindings(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/MenuPage',
          page: () => const MenuPrincipal(),
          binding: TopAppBarBindings(),
          children: [
            GetPage(
              name: '/GeneralInfoCard',
              page: () => const GeneralInfoCard(),
              //  binding: TopAppBarBindings(),
            ),
            GetPage(
              name: '/GeneralLastSent',
              page: () => GeneralLastSent(),
              //  binding: TopAppBarBindings(),
            ),
          ],
        ),
        GetPage(
          name: '/locationPage',
          page: () => LocationPage(),
        ),
        GetPage(
          binding: FilterDataBindings(),
          name: '/filter',
          page: () => const PedidoInternoPage(),
        ),
        GetPage(
          binding: RastreioBindings(),
          name: '/rastreabilidadePage',
          page: () => const RastreabilidadePage(),
        ),
        GetPage(
          name: '/calendarPage',
          page: () => CalendarPage(),
        ),
        GetPage(
          binding: FilterTotalSentBindings(),
          name: '/totalSentsPage',
          page: () =>  TotalSentPage(),
        ),
        GetPage(
          binding: LoteFilterBindings(),
          name: '/loteFilterPage',
          page: ()=> const LoteFilterPage(),
    ),
        GetPage(
          binding: DetalhesPapelBindings(),
          name: '/detalhesPapelPage',
          page: ()=> const DetalhesPapelPage(),
        ),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        SfGlobalLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('pt'),
      ],
      locale: const Locale('pt'),
      debugShowCheckedModeBanner: false,
      title: 'Grupo Nordeste Gerencial',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      home: const SplashPage(),
    );
  }
}
