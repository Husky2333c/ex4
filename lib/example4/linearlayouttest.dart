import 'package:flutter/material.dart';

class TestLineLayout extends StatefulWidget {
  const TestLineLayout({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestLineLayout> createState() => _TestLineLayoutState();
}

class _TestLineLayoutState extends State<TestLineLayout> {
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
              Row(
                children:<Widget>[
                  Image.network(
                    "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=460",
                    width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                  Image.network(
                      "https://img2.baidu.com/it/u=1405321319,2614149539&fm=253&fmt=auto&app=138&f=JPEG?w=450&h=470",
                      width: 100),
                ]
              ),
            ]
        ),
      ),
    );
  }
}