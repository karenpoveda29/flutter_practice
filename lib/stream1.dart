Stream<int> streamNumbers() async* {
  for (var i = 1; i <= 5; i++) {
    await Future<void>.delayed(const Duration(seconds: 2));
    yield i;
  }
}

Future counter() async {
  final streamCounter = streamNumbers();

  var sum = 0;
  var numbersInStream = 0;

  streamCounter.listen((number) {
    sum += number;
    print('total sum: $sum');

    numbersInStream += 1;
    final average = sum / numbersInStream;
    print('total average: $sum / $numbersInStream = $average');
  }, onError: ((err) {
    print('This error occured: $err');
  }));
}
