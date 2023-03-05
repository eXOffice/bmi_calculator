import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'icon_content.dart';

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
            children:  [
              Expanded(child: ReUsableCard(
                  colour: activeCardColor,
                  carChild: IconContent(genderText: maleText, genderIcon: maleIcon,),
                )
              ),
              Expanded(child: ReUsableCard(
                colour: activeCardColor,
                carChild: IconContent(genderText: femaleText, genderIcon: femaleIcon,),
                ),
              )
            ],
          ),

          Row(
            children:  [
              //Expanded(child: ReUsableCard(colour: activeCardColor,)),
            ],
          ),
          Row(
            children:  [
              //Expanded(child: ReUsableCard(colour: activeCardColor,)),
              //Expanded(child: ReUsableCard(colour: activeCardColor, ))
            ],
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'CALCULATE'
                )
              ],
            ),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor
          ),
        ],
      )
    );
  }
}



