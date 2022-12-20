import 'package:flutter/material.dart';

class WillPopScopeTest extends StatefulWidget {
  const WillPopScopeTest({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<WillPopScopeTest> createState() => WillPopScopeTestState();
}

class WillPopScopeTestState extends State<WillPopScopeTest> {
  DateTime? _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_lastPressedAt == null ||
            DateTime.now().difference(_lastPressedAt!) > Duration(seconds: 1)) {
          //两次点击间隔超过1秒则重新计时
          _lastPressedAt = DateTime.now();
          return false;
        }
        return true;
      },
      child: Container(
        alignment: Alignment.center,
        child: Text("1秒内连续按两次返回键退出"),
      ),
    );
  }
}