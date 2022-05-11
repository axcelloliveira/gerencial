import 'package:get/get_connect/connect.dart';

class RestClient extends GetConnect {
  RestClient() {
    baseUrl = "http://10.100.10.161";
    timeout = const Duration(seconds: 30);
    maxAuthRetries = 3;
  }
}