import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Colors.yellow,
        //accentColor: Colors.white,
      // ),
      //theme: ThemeData.dark().copyWith(),
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),// theme data=> THemeData.dark() wont work in M3
      home: InputPage(),
    );
  }
}