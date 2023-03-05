import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {

  const ReUsableCard({super.key,  required this.colour, required this.carChild});
  final Color colour;
  final Widget carChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.0,
      width: 140.0,
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          //borderRadius: BorderRadius.all(Radius.circular(15.0)), //same
          color: colour//Color(0xFF1D1E33),
      ),
      child: carChild,
    );
  }
}