import 'package:http/http.dart' as http;

void futureRequest() {
  var url = Uri.https('rickandmortyapi.com', 'api/character');

  final Future<http.Response> response = http.get(url);

  response.then((res) {
    print(res.body);
  }).catchError((onError) {
    print('$onError was caught');
  });
}

void futureCreation() {
  Future<int>.delayed(Duration(seconds: 3), () {
    return 100;
  }).then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });

  print('Waiting for value...');
}
