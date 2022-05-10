import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:norteste_gerencial/bindings/general_bindings.dart';
import 'package:norteste_gerencial/modules/login/login_page.dart';
import 'package:norteste_gerencial/modules/principal/view/general_last_sent.dart';
import 'package:norteste_gerencial/modules/principal/view/menu_principal.dart';
import 'package:norteste_gerencial/modules/splash/splash_page.dart';
import 'constants.dart';
import 'modules/principal/bindings/top_app_bar_bindings.dart';
import 'modules/principal/view/general_cards/general_info_card.dart';

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
              page: () => const GeneralLastSent(),
              //  binding: TopAppBarBindings(),
            ),
          ],
        ),
      ],
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
