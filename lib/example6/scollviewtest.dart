import 'package:flutter/material.dart';

class TestScollView extends StatefulWidget {
  const TestScollView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestScollView> createState() => _TestScollViewState();
}

class _TestScollViewState extends State<TestScollView> {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scrollbar( // 显示进度条
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str.split("")
            //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Text(c, textScaleFactor: 2.0,))
                .toList(),
          ),
        ),
      ),
    );
  }
}