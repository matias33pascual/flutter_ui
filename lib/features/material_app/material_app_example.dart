import 'package:flutter/material.dart';

class MaterialAppExample extends StatelessWidget {
  const MaterialAppExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App Example',
      home: _buildHome(),
    );
  }

  Widget _buildHome() {
    return const Center(
      child: Text('Home!'),
    );
  }
}
