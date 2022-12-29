// ignore_for_file: unused_element

import 'dart:math' as math;
import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildContainerExample4();
  }

  /*
    helper function that builds a 500x500 light blue Container
  */
  Widget _buildContainer() {
    return Container(
      width: 500,
      height: 500,
      color: Colors.lightBlue,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      child: const Center(child: Text('Example Container')),
    );
  }

  /* 
    In this example, the width and height in the Container have no effect 
  */
  Widget _buildContainerExample1() {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: _buildContainer(),
        // the width and height in the Container have no effect because the
        // Container uses the size of the SizedBox
      ),
    );
  }

  /*
    In this example, the width and height in the Container work because 
    SizedBox has no size
  */
  Widget _buildContainerExample2() {
    return Center(
      child: SizedBox(child: _buildContainer()),
    );
  }

  /* 
    In this example, the width and height of the SizedBox have no effect due to
    the width and height of the Container
  */
  Widget _buildContainerExample3() {
    return Container(
      color: Colors.lightBlue,
      width: 200,
      height: 200,
      child: const SizedBox(
        width: 1600,
        height: 1600,
      ),
    );
  }

  /*
    Just for fun
  */
  Widget _buildContainerExample4() {
    return Container(color: Colors.blue, child: _buildContainerRecursively(16));
  }

  Widget _buildContainerRecursively(int quantity) {
    if (quantity < 1) return _guyIcon();

    return _newContainer(quantity);
  }

  Widget _guyIcon() {
    return Transform.translate(
      offset: const Offset(-3, 0),
      child: Center(
        child: Icon(
          Icons.accessibility_new_sharp,
          color: Colors.blue[800],
        ),
      ),
    );
  }

  Transform _newContainer(int quantity) {
    return Transform.rotate(
      angle: -math.pi / 8,
      child: Center(
        child: Container(
          width: 400,
          height: 400,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber[math.Random().nextInt(5) * 100 + 200],
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(child: _buildContainerRecursively(quantity - 1)),
        ),
      ),
    );
  }
}
