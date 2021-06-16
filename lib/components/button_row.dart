import 'package:flutter/material.dart';
import 'button.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  ButtonRow(this.buttons);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        flex: 1,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: this.buttons.fold([], (list, b) {
            list.isEmpty ? list.add(b) : list.addAll([SizedBox(width: 1), b]);
            return list;
          }),
        ),
      ),
    );
  }
}
