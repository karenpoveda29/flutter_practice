import 'package:flutter/material.dart';

// import 'futures.dart';
import 'stream1.dart';

void main() {
  runApp(const MyApp());
  // futureRequest();
  counter();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Center(child: Text('hola')),
    );
  }
}
