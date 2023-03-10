import 'package:flutter/material.dart';

class TestListView extends StatefulWidget {
  const TestListView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TestListView> createState() => _TestListViewState();
}

class _TestListViewState extends State<TestListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        const Text('I\'m dedicating every day to you'),
        const Text('Domestic life was never quite my style'),
        const Text('When you smile, you knock me out, I fall apart'),
        const Text('And I thought I was so smart'),
      ],
    );
  }
}