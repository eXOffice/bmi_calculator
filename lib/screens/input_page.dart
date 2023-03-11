import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/bottom_button.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/round_icon_button.dart';
import '../constants.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

enum Gender { male, female }

Gender? selectedGender;

CalculatorBrain calc = CalculatorBrain(height: null, weight: null);

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kInactiveCardColor;
  Color femaleCardColor = kInactiveCardColor;

  int height = 180;
  int wt = 60, age = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.green,
      appBar: AppBar(
        //backgroundColor: Color(0xFF880183),
        title: const Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ReUsableCard(
                  onPress: () {
                    // use Function datatype and call it from a function;
                    setState(
                      () {
                        selectedGender = Gender.male;
                      },
                    );
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  cardChild: IconContent(
                    genderText: kMaleText,
                    genderIcon: kMaleIcon,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(
                      () {
                        selectedGender = Gender.female;
                      },
                    );
                  },
                  child: ReUsableCard(
                    onPress: () {
                      setState(
                        () {
                          selectedGender = Gender.female;
                        },
                      );
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderText: kFemaleText,
                      genderIcon: kFemaleIcon,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReUsableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kNumberTerxtStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.green,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          activeTrackColor: Colors.white,
                          overlayColor: Color(0x30EB1555),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          //activeColor: Color(0xFFEB1),
                          //inactiveColor: Color(0xFF8D8E98),
                          thumbColor: Colors.red,
                          //secondaryActiveColor: Colors.white,
                          onChanged: (double newValue) {
                            setState(
                              () {
                                height = newValue.round();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ReUsableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'WEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        wt.toString(),
                        style: kNumberTerxtStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // FloatingActionButton(
                          //   onPressed: () {},
                          //   backgroundColor: Color(0xFF4C4F5E),
                          //   child: Icon(
                          //     FontAwesomeIcons.plus,
                          //     color: Colors.white,
                          //   ),
                          // ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(
                                () {
                                  wt--;
                                },
                              );
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(
                                () {
                                  wt++;
                                  //print(wt);
                                },
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReUsableCard(
                  colour: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'AGE',
                        style: kLabelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: kNumberTerxtStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onPressed: () {
                              setState(
                                () {
                                  age--;
                                },
                              );
                            },
                          ),
                          SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onPressed: () {
                              setState(
                                () {
                                  age++;
                                  //print(wt);
                                },
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          BottomButton(
            onTap: () {
              calc = CalculatorBrain(height: height, weight: wt);
              Navigator.pushNamed(context, '/first');
            },
            buttonTitle: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
