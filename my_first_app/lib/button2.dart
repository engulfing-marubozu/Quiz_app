import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  void Function() x;
  final String text;

  Button2(this.text ,this.x, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Container(
        width: 250,
        padding: const EdgeInsets.all(10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
          onPressed: x,
          child:  Text(text),
        )));
  }
}
