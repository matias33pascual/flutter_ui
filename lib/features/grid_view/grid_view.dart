import 'package:flutter/material.dart';
import 'package:flutter_ui/model/example.dart';
import 'package:flutter_ui/utils/utils.dart';

class GirdViewExample extends Example {
  const GirdViewExample({
    required super.exampleNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (exampleNumber) {
      case 1:
        return _buildExample1();

      default:
        return _buildExample1();
    }
  }

  Widget _buildExample1() {
    return GridView.count(
      crossAxisCount: 3,
      children: [
        colorBox(Colors.amber),
        colorBox(Colors.amber),
        colorBox(Colors.amber),
        colorBox(Colors.amber),
        colorBox(Colors.amber),
        colorBox(Colors.amber),
        colorBox(Colors.amber),
      ],
    );
  }
}
