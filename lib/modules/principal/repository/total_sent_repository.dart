import 'package:http/http.dart' as http;

Future<String?> totalSentConnection() async {
  var url = 'http://10.100.10.161:8083/eventos2/faturamentoMes';

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
