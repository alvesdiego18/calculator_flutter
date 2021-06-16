import 'package:math_expressions/math_expressions.dart';

class Memory {
  String _value = '0';
  List<String> listCommands = [
    '/',
    '*',
    '-',
    '+',
    '=',
  ];

  String get value {
    return _value;
  }

  void applyCommnad(String command) {
    if (command == 'AC') {
      _value = '0';
    } else {
      this._validationCommand(command);
    }
  }

  void _validationCommand(String command) {
    if (_value == '0') {
      _value = command;
    } else if (command == '=') {
      _value = this._result(command);
    } else {
      _value += command;
    }
  }

  String _result(String command) {
    Parser p = Parser();
    // Context is used to evaluate variables, can be empty in this case.
    ContextModel cm = ContextModel();
    Expression exp = p.parse(_value);
    double result = exp.evaluate(EvaluationType.REAL, cm);

    print(exp);

    return result.toString();
  }
}
