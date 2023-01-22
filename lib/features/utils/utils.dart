import 'package:flutter/material.dart';

Widget colorBox(Color color, {double? roundedBorderSize}) {
  return SizedBox(
    width: 50,
    height: 50,
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: roundedBorderSize != null
            ? BorderRadius.all(Radius.circular(roundedBorderSize))
            : null,
        border: Border.all(color: Colors.black, width: 1.5),
      ),
    ),
  );
}
