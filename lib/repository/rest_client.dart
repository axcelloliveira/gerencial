import 'package:get/get_connect/connect.dart';


class RestClient extends GetConnect  {

  RestClient() {
    baseUrl = 'http://24.152.37.103';
    timeout = const Duration(seconds: 30);
    maxAuthRetries = 3;
  }
}
