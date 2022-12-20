import 'package:flutter/material.dart';

class ModifyCounter extends StatefulWidget {
  const ModifyCounter({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ModifyCounter> createState() => _CounterState();
}

class _CounterState extends State<ModifyCounter> {
  int _count = 0;
  Future<bool?> showDeleteConfirmDialog1() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("成功点击10次"),
          actions: <Widget>[
            TextButton(
              child: Text("确定"),
              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
            ),
          ],
        );
      },
    );
  }

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
            CircularProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: _count/10,
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                //执行缩放动画
                return ScaleTransition(child: child, scale: animation);
              },
              child: Text(
                '$_count',
                //显示指定key，不同的key会被认为是不同的Text，这样才能执行动画
                key: ValueKey<int>(_count),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Text(
              '点击 +1 十次',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
              child: const Text('+1',),
              onPressed: () {
                setState(() {
                  _count += 1;
                  if(_count == 10) {
                    _count = 0;
                    showDeleteConfirmDialog1();
                  }
                });
              },
            ),
          ],
        ),
      )
    );
  }
}