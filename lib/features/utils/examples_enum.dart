import 'package:flutter/material.dart';

import '../column/column_examples.dart';
import '../container/container_examples.dart';

enum Examples {
  container,
  column,
}

extension ExamplesExtension on Examples {
  Widget getExample() {
    switch (this) {
      case Examples.container:
        return const ContainerExamples();

      case Examples.column:
        return const ColumnExamples();

      default:
        return Container();
    }
  }
}
