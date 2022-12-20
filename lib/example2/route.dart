import 'package:flutter/material.dart';

class TestRouter extends StatefulWidget {
  const TestRouter({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestRouter> createState() => _TestRouterState();
}

class _TestRouterState extends State<TestRouter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "/");
            }, child: Text("点击返回首页"))
          ],
        ),
      ),
    );
  }
}