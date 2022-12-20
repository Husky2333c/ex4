import 'package:flutter/material.dart';

class TestPrograssBar extends StatefulWidget {
  const TestPrograssBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestPrograssBar> createState() => _TestPrograssBarState();
}

class _TestPrograssBarState extends State<TestPrograssBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .5,
              ),
              Container(
                height: 100,
              ),
              CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .7,
              ),
            ]
        ),
      ),
    );
  }
}