// ignore_for_file: unused_element

import 'dart:math' as math;
import 'package:flutter/material.dart';

class ContainerExamples extends StatelessWidget {
  const ContainerExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildLightBlueContainer();
  }

  /* helper function that builds light blue Container */
  Widget _buildLightBlueContainer({
    double? width = 500,
    double? height = 500,
    double? padding = 16,
    double? margin = 16,
    Widget? child = const Center(child: Text('Example Container')),
  }) {
    return Container(
      width: width,
      height: height,
      color: Colors.lightBlue,
      margin: EdgeInsets.all(margin!),
      padding: EdgeInsets.all(padding!),
      child: child,
    );
  }

  /* In this example, the width and height in the Container work because 
  SizedBox has no size */
  Widget _buildNoSizeExample() {
    return Center(
      child: SizedBox(child: _buildLightBlueContainer()),
    );
  }

  /* In this example, the width and height in the Container have no effect 
  because SizedBox has size */
  Widget _buildNoEffectInContainerExample() {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: _buildLightBlueContainer(),
      ),
    );
  }

  /* In this example, the width and height of the SizedBox have no effect due 
  to the width and height of the Container */
  Widget _buildNoEffectSizedBoxExample() {
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

  /* Container and recursion just for fun */
  Widget _buildContainerWithRecursionJustForFun() {
    return Container(
      color: Colors.blue,
      child: _buildContainers(quantity: 16),
    );
  }

  Widget _buildContainers({required int quantity}) {
    if (quantity < 1) return _guyIcon();

    return _newContainerWithRecursion(quantity);
  }

  Transform _newContainerWithRecursion(int quantity) {
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
          child: Center(child: _buildContainers(quantity: quantity - 1)),
        ),
      ),
    );
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

  /* Container example of container properties */
  Widget _buildContainerWithProperties() {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        margin: const EdgeInsets.all(32),
        padding: const EdgeInsets.all(8),
        alignment: const Alignment(1, -1),
        // color: Colors.blue[200], because it conflicts with BoxDecoration

        // this property overrides the width and height of the Container
        constraints: const BoxConstraints(
          minWidth: 400,
          maxWidth: 800,
          minHeight: 400,
          maxHeight: 800,
        ),

        decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage('https://picsum.photos/seed/matxzun/800'),
            fit: BoxFit.cover,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(width: 3, color: Colors.indigo),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(5, 5),
              blurRadius: 10,
            )
          ],
        ),
        foregroundDecoration: BoxDecoration(
          border: Border.all(width: 0.3, color: Colors.white),
          gradient: const RadialGradient(
            colors: [
              Colors.white,
              Colors.white70,
              Colors.white30,
              Colors.white10,
            ],
          ),
          shape: BoxShape.circle,
          boxShadow: const [BoxShadow(color: Colors.black38, blurRadius: 10)],
        ),
        child: _buildLightBlueContainer(
          width: 50,
          height: 50,
          margin: 0,
          padding: 0,
          child: const Center(child: Icon(Icons.alarm)),
        ),
      ),
    );
  }

  /* Container with clipBehavior property */
  Widget _buildContainerWithClipBehavior() {
    return Container(
      width: 400,
      height: 400,
      clipBehavior: Clip.antiAlias,
      decoration: const ShapeDecoration(
        color: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );
  }
}
