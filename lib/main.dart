import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Colors.yellow,
      //accentColor: Colors.white,
      // ),
      //theme: ThemeData.dark().copyWith(),
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      // theme data=> THemeData.dark() wont work in M3
      //home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => ResultPage(
              bmiResult: calc.calculateBMI()!,
              resultText: calc.getResult(),
              interPretation: calc.getInterpretation(),
            ),
      },
    );
  }
}
