import 'package:flutter/material.dart';
import 'package:flutter_ui/features/layout/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learning Flutter UI',
      home: _buildHome(),
    );
  }

  Scaffold _buildHome() => const Scaffold(body: ContainerExample());
}
