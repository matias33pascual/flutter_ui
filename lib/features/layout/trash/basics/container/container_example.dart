// import 'package:flutter/material.dart';

// import '../index.dart';

// class ContainerExample extends ExampleAbstractModel {
//   const ContainerExample({
//     required super.exampleNumber,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     switch (exampleNumber) {
//       case 1:
//         return _buildExample1();

//       case 2:
//         return _buildExample2(context);

//       default:
//         return _buildExample1();
//     }
//   }

//   ConstrainedBox _buildColorBoxWithConstrainedBox() {
//     return ConstrainedBox(
//       constraints: const BoxConstraints(maxWidth: 10, maxHeight: 10),
//       child: colorBox(Colors.cyanAccent),
//     );
//   }

//   Container _buildExample1() {
//     return Container(
//       margin: const EdgeInsets.all(10),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//           color: Colors.red,
//           border: Border.all(width: 10, color: Colors.indigo),
//           borderRadius: const BorderRadius.all(Radius.circular(10))),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           _buildColorBoxWithConstrainedBox(),
//           colorBox(Colors.cyanAccent),
//           colorBox(Colors.cyanAccent),
//         ],
//       ),
//     );
//   }

//   Center _buildTextNote(BuildContext context) {
//     return Center(
//       child: ConstrainedBox(
//         constraints: const BoxConstraints(maxWidth: 200),
//         child: Text(
//           'one simple note',
//           textAlign: TextAlign.center,
//           style: Theme.of(context).textTheme.headline2!,
//         ),
//       ),
//     );
//   }

//   Center _buildExample2(BuildContext context) {
//     return Center(
//       child: Container(
//         constraints: const BoxConstraints(maxWidth: 500, maxHeight: 400),
//         color: Colors.yellow[200],
//         transform: Matrix4.rotationZ(0.1),
//         child: _buildTextNote(context),
//       ),
//     );
//   }
// }

// //* References

// //* Container: Adds padding, margins, borders, background color, or other decorations to a widget.
// //? https://api.flutter.dev/flutter/widgets/Container-class.html

// //* ConstrainedBox: A widget that imposes additional constraints on its child.
// //? https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html