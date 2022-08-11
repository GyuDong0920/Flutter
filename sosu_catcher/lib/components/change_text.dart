import 'package:flutter/material.dart';

class ChangeText extends StatefulWidget {
  const ChangeText({Key? key}) : super(key: key);

  @override
  State<ChangeText> createState() => _ChangeTextState();
}

class _ChangeTextState extends State<ChangeText> {
  String _changeText = "false";

  void _onChange(String value) {
    setState(() {
      int i = 0;
      int num = int.parse(value);
      if (num % 2 == 0) {
        _changeText = "false";
      } else {
        for (i = 1; i <= num; i++) {
          if (num / i == 1 && num % i != 0) {
            _changeText = "true";
          } else {
            _changeText = "false";
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.numberWithOptions(),
          onSubmitted: _onChange,
          maxLines: 1,
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: 250,
          height: 50,
          child: Center(
            child: Text(
              _changeText,
            ),
          ),
        )
      ],
    );
  }
}
