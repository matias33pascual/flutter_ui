import 'package:flutter/material.dart';
import 'package:flutter_ui/model/example.dart';
import 'package:flutter_ui/utils/utils.dart';

class ColumnExample extends Example {
  const ColumnExample({
    required super.exampleNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    switch (exampleNumber) {
      case 1:
        return _buildExample1();

      case 2:
        return _buildExample2();

      default:
        return _buildExample1();
    }
  }

  Column _buildExample1() {
    return Column(
      children: const [
        Expanded(child: Placeholder(color: Colors.blue, fallbackWidth: 10)),
        Expanded(flex: 2, child: Placeholder(color: Colors.red)),
        Expanded(child: Placeholder(color: Colors.green)),
        Placeholder(color: Colors.black, fallbackHeight: 50),
      ],
    );
  }

  Column _buildExample2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        colorBox(Colors.red),
        colorBox(Colors.indigo),
        colorBox(Colors.cyan),
        colorBox(Colors.green),
      ],
    );
  }
}
