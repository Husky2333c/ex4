import 'package:flutter/material.dart';

class TestImage extends StatefulWidget {
  const TestImage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestImage> createState() => _TestImageState();
}

class _TestImageState extends State<TestImage> {
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
            Image.network(
                "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=460",
                width: 500),
          ]
        ),
      ),
    );
  }
}