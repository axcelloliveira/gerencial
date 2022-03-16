
import 'package:local_auth/local_auth.dart';


Future<bool> checkingForBioMetrics() async {
  bool canCheckBiometrics = false;
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  canCheckBiometrics = await _localAuthentication.canCheckBiometrics;
  print(canCheckBiometrics);
  return canCheckBiometrics;
}