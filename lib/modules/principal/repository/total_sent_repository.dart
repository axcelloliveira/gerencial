import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> totalSentConnection() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String port = prefs.getString('port')!;

  var url = 'https://www.9487.masterdaweb.net:$port/eventos2/faturamentoMes';

  http.Response resposta;
  try {
    resposta =
        await http.get(Uri.parse(url)).timeout(const Duration(seconds: 12));
    if (resposta.statusCode == 200) {
      if (resposta.body != 'erro') {
        return resposta.body;
      } else {
        return 'error';
      }
    } else {
      return 'error';
    }
  } catch (error) {
    return 'error';
  }
}
