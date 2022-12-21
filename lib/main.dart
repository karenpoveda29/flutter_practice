import 'package:flutter/material.dart';
import 'package:flutter_practice/futures.dart';

void main() {
  runApp(const MyApp());
  futureRequest();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Text('hola'),
    );
  }
}
