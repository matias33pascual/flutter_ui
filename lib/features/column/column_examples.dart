// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import '../utils/utils.dart' as utils;

class ColumnExamples extends StatelessWidget {
  const ColumnExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildColumnWithSpacerExample();
  }

  Widget _buildColumnWithSpacerExample() {
    return Container(
      height: 600,
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.black12)),
      child: Column(
        children: [
          utils.colorBox(Colors.yellow),
          const Spacer(flex: 1),
          utils.colorBox(Colors.lightBlue),
          const Spacer(flex: 1),
          utils.colorBox(Colors.red),
          const Spacer(flex: 4),
          utils.colorBox(Colors.green),
          const Spacer(flex: 8),
        ],
      ),
    );
  }

  Widget _buildColumnWithFlexibleExample() {
    return Container(
      width: 200,
      height: 600,
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.black12)),
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.lightBlue,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.lime,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColumnWithExpandedExample() {
    return Container(
      height: 500,
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.black12)),
      child: Column(children: [
        utils.colorBox(Colors.amber),
        utils.colorBox(Colors.red),
        Expanded(child: utils.colorBox(Colors.grey)),
        utils.colorBox(Colors.amber),
      ]),
    );
  }

  Widget _buildColumnWithWrapExample() {
    return Container(
      width: 200,
      decoration:
          BoxDecoration(border: Border.all(width: 3, color: Colors.black12)),
      child: Column(
        children: [
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.spaceEvenly,
            children: [
              utils.colorBox(Colors.green),
              utils.colorBox(Colors.amber),
              utils.colorBox(Colors.lightGreen),
              utils.colorBox(Colors.deepPurple),
              utils.colorBox(Colors.purple),
            ],
          ),
        ],
      ),
    );
  }
}
