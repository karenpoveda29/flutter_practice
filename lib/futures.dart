import 'package:http/http.dart' as http;

void futureRequest() {
  var url = Uri.https('rickandmortyapi.com', 'api/character');

  final Future<http.Response> characters = http.get(url);

  characters.then((res) {
    print(res.body);
  }).catchError((onError) {
    print('$onError was caught');
  });
}
