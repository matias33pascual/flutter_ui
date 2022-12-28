import 'package:flutter/material.dart';
import 'features/features_exports.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Flutter UI',
      home: GirdViewExample(exampleNumber: 1),
    );
  }
}
