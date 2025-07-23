import 'package:flutter/material.dart';
import 'package:tdd_kata/string_calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text('App Bar')),
        body: Center(
          child: Column(
            children: [
              Text(add('').toString()),
              Text(add('5').toString()),
              Text(add('1,5').toString()),
              Text(add('1,2,3').toString()),
              Text(add('1\n2,3').toString()),
              Text(add('//;\n1;2').toString()),
              Text(add('//|\n4|5|6').toString()),
             // Text(add('1,-2,3,-4').toString()),
            ],
          ),
        ),
      ),
    );
  }
}
