import 'package:flutter/material.dart';

class TestTransform extends StatefulWidget {
  const TestTransform({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestTransform> createState() => _TestTransformState();
}

class _TestTransformState extends State<TestTransform> {
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
              Container(
                color: Colors.black,
                child: Transform(
                  alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                  transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.deepOrange,
                    child: const Text('Apartment for rent!'),
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}