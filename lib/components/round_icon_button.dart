import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  //const RoundIconButton({Key? key}) : super(key: key);
  final IconData? icon;

  final Function()? onPressed;

  const RoundIconButton(
      {super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: Icon(icon),
    );
  }
}
