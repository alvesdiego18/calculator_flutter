import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/display.dart';
import '../components/keyboard.dart';
import '../models/memory.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = new Memory();

  buttonClicked(String value) {
    setState(() {
      memory.applyCommnad(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(48, 48, 48, 1),
      statusBarBrightness: Brightness.dark,
    ));
    return Container(
      child: MaterialApp(
        home: Column(
          children: [
            Display(memory.value),
            Keyboard(cb: buttonClicked),
          ],
        ),
      ),
    );
  }
}
