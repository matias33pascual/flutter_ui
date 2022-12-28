import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return __buildHeightWidghtContainerExample();
  }

  // In this example, the width and height in the container have no effect
  Center __buildHeightWidghtContainerExample() {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.lightBlue,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          child: const Text('Soy un ejemplo de container'),
        ),
      ),
    );
  }

  // In this example, the width and height in the container works
  Center __buildHeightWidghtContainerExample2() {
    return Center(
      child: SizedBox(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.lightBlue,
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(16),
          child: const Text('Soy un ejemplo de container'),
        ),
      ),
    );
  }
}
