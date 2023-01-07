// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:my_first_app/question.dart';
// import './button1.dart';
import './button2.dart';
import './question_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {

  void x(String correct, String opt) {
    setState(() {
      val += 1;
      print(val);

      if (correct == opt) {
        print("correct answer");
      } else {
        print("wrong answer");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first Title'),
        ),
        body: Column(
          children: [
            Question(pairs[val % 2]['question'].toString()),
            ...((pairs[val % 2]['options'] as List<String>)
                .map((opt) => Button2(opt, () {
                      List cO = pairs[val % 2]['options'] as List<String>;

                      x(cO[pairs[val % 2]['correct'] as int], opt);
                    })))
          ],
        ),
      ),
    );
  }
}
