import 'package:flutter/material.dart';


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
        title: const Text(
            'BMI Calcghgfhulator'
        ),
      ),
      body: const Center(
        child: Text('Body Trgytghext'),
      ),
    );
  }
}