import 'package:flutter/material.dart';

class TestDialog extends StatefulWidget {
  const TestDialog({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestDialog> createState() => _TestDialogState();
}

class _TestDialogState extends State<TestDialog> {
  Future<bool?> showDeleteConfirmDialog1() {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示"),
          content: Text("您确定要删除当前文件吗?"),
          actions: <Widget>[
            TextButton(
              child: Text("取消"),
              onPressed: () => Navigator.of(context).pop(), // 关闭对话框
            ),
            TextButton(
              child: Text("删除"),
              onPressed: () {
                //关闭对话框并返回true
                Navigator.of(context).pop(true);
              },
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
            children:<Widget>[
              ElevatedButton(
                child: Text("对话框1"),
                onPressed: () async {
                  //弹出对话框并等待其关闭
                  bool? delete = await showDeleteConfirmDialog1();
                  if (delete == null) {
                    print("取消删除");
                  } else {
                    print("已确认删除");
                    //... 删除文件
                  }
                },
              ),

            ]
        ),
      ),
    );
  }
}