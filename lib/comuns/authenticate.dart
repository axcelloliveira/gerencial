import 'package:local_auth/local_auth.dart';
import '../controller/login_controller.dart';



Future<void> authenticateMe() async {
  bool authenticated = false;
  LoginController controller = LoginController();
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  try {
    authenticated = await _localAuthentication.authenticate(
      localizedReason: "Teste de impressão", // message for dialog
      useErrorDialogs: true, // show error in dialog
      stickyAuth: true, // native process
    );
    if (authenticated) {
      controller.validatedFinger = "VALIDO";
      controller.menuPage();
    } else {
      controller.validatedFinger = "INVALIDO";

    }
  } catch (e) {
    print(e);
  }
  // if (!mounted) {
  //  return print("disgraça");
 // }
}