import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:local_auth/local_auth.dart';
import 'package:norteste_gerencial/comuns/custom_snackbar.dart';
import '../../../comuns/custom_snackbar.dart';
import '../login_page.dart';

class BiometriaController extends GetxController {
  var localAuth = LocalAuthentication();
  var hasFingerPrintLock = false.obs;
  var hasFaceLock = false.obs;
  var isUserAuthenticated = false.obs;
  var biometricsAvaliable = false.obs;

  @override
  void onInit() {
    super.onInit();
    _getAllBiometrics();
  }

  @override
  void onClose() {}

  void _getAllBiometrics() async {
    // Verifica se há autenticação local disponível ou não
    bool hasLocalAuthentication = await localAuth.canCheckBiometrics;
    if (hasLocalAuthentication) {
      biometricsAvaliable.value = true;
      List<BiometricType> availableBiometrics =
          await localAuth.getAvailableBiometrics();
      hasFaceLock.value = availableBiometrics.contains(BiometricType.face);
      hasFingerPrintLock.value =
          availableBiometrics.contains(BiometricType.fingerprint);
    } else {
      biometricsAvaliable.value = false;
    }
  }

  void authenticateUser(LoginPage loginPage) async {
    try {
      const androidMessage = AndroidAuthMessages(
        signInTitle: 'Biometria Requerida',
        cancelButton: 'Cancelar',
        goToSettingsButton: 'Configurações',
        goToSettingsDescription:
            'Configure a validação por biometria ou FaceID.',
        biometricHint: '',

      );

      isUserAuthenticated.value = await localAuth.authenticate(
        localizedReason: 'Autentique sua identidade',
        biometricOnly: true,
        useErrorDialogs: true,
        stickyAuth: true,
        androidAuthStrings: androidMessage,
      );
      if (isUserAuthenticated.value) {
        showSnackBar(
            title: "Sucesso",
            message: "Você foi autenticado",
            backgroundColor: Colors.green);
        Get.toNamed('/MenuPage');
      } else {
        Get.offAll(() => loginPage);
        showSnackBar(
            title: "Error",
            message: "Autenticação cancelada",
            backgroundColor: Colors.red);
      }
    } catch (e) {
      Get.offAll(const LoginPage());
      showSnackBar(
          title: "Error", message: e.toString(), backgroundColor: Colors.red);
    }
  }
}
