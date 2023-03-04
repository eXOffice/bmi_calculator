import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: AppBar (
        //backgroundColor: Color(0xFF880183),
        title: const Center(
          child: Text(
              'BMI Calculator'
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Expanded(child: ReUsableCard(colour: activeCardColor,)),
              Expanded(child: ReUsableCard(colour: activeCardColor,)),
            ],
          ),

          Row(
            children: const [
              Expanded(child: ReUsableCard(colour: activeCardColor,)),
            ],
          ),
          Row(
            children: const [
              Expanded(child: ReUsableCard(colour: activeCardColor,)),
              Expanded(child: ReUsableCard(colour: activeCardColor,))
            ],
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor
          )
        ],
      )
    );
  }
}

class ReUsableCard extends StatelessWidget {

  const ReUsableCard({super.key, required this.colour});
  final Color colour;
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
    );
  }
}