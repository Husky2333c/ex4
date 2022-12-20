import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                color: Colors.red,
                height: 200,
              ),
              Container(
                color: Colors.blue,
                height: 300,
              ),
            ],
          ),
        ),
        Positioned(
           // top: 100,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
              height: 300,
              color: Colors.green,
            )
        ),
      ],
    );
  }
}