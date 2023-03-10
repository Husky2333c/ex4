import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TestGestureRecongizer extends StatefulWidget {
  const TestGestureRecongizer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestGestureRecongizer> createState() => _GestureRecognizerState();
}

class _GestureRecognizerState extends State<TestGestureRecongizer> {
  TapGestureRecognizer _tapGestureRecognizer = TapGestureRecognizer();
  bool _toggle = false; //变色开关

  @override
  void dispose() {
    //用到GestureRecognizer的话一定要调用其dispose方法释放资源
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: "你好世界"),
            TextSpan(
              text: "点我变色",
              style: TextStyle(
                fontSize: 30.0,
                color: _toggle ? Colors.blue : Colors.red,
              ),
              recognizer: _tapGestureRecognizer
                ..onTap = () {
                  setState(() {
                    _toggle = !_toggle;
                  });
                },
            ),
            TextSpan(text: "你好世界"),
          ],
        ),
      ),
    );
  }
}