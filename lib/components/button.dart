import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final bool big;
  final Function(String) cb;
  final bool isOperation;

  static const DEFAULT = Color.fromRGBO(91, 94, 97, 1);
  static const DARK = Color.fromRGBO(59, 62, 66, 1);
  static const OPERATION = Color.fromRGBO(255, 160, 39, 1);

  Button({
    required this.text,
    required this.cb,
    this.color = DEFAULT,
    this.big = false,
    this.isOperation = false,
  });

  Button.operation({
    required this.text,
    required this.cb,
    this.color = OPERATION,
    this.big = false,
    this.isOperation = true,
  });

  Button.dark({
    required this.text,
    required this.cb,
    this.color = DARK,
    this.big = false,
    this.isOperation = true,
  });

  Button.big({
    required this.text,
    required this.cb,
    this.color = DEFAULT,
    this.big = true,
    this.isOperation = true,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.big ? 2 : 1,
      child: Container(
        child: ElevatedButton(
          onPressed: () => this.cb(this.text),
          child: Text(
            this.text,
            style: TextStyle(
              fontSize: this.isOperation ? 24 : 14,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(this.color),
          ),
        ),
      ),
    );
  }
}
