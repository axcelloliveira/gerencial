import 'package:get/get_connect/connect.dart';

class RestClient extends GetConnect  {
  RestClient() {
    baseUrl = 'https://www.9487.masterdaweb.net';
    timeout = const Duration(seconds: 30);
    maxAuthRetries = 3;
  }
}
