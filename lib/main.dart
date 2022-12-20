import 'package:flutter/material.dart';
import 'package:myfirstflutterproject/example3/prograssbartest.dart';
import 'package:myfirstflutterproject/example8/gesturetest.dart';
import 'package:myfirstflutterproject/modifycounter.dart';
import 'example2/counter.dart';
import 'example2/route.dart';
import 'example3/imagetest.dart';
import 'example4/linearlayouttest.dart';
import 'example4/flexlayouttest.dart';
import 'example5/decoratedboxtest.dart';
import 'example5/transformtest.dart';
import 'example6/scollviewtest.dart';
import 'example6/listviewtest.dart';
import 'example7/willpopscope.dart';
import 'example7/dialogtest.dart';
import 'example8/gesturetest.dart';
import 'example8/gesturerecognizer.dart';
import 'example9/interweaveanimation.dart';
import 'example9/switchanimation.dart';
//import 'example11/iotest.dart';
import 'example11/baiduclient.dart';
import 'firstpage.dart';
import 'test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "counter_page":(context) => Counter(title: "counter"),
        "route_page":(context) => TestRouter(title: "router"),
        "image_page":(context) => TestImage(title: "image"),
        "prograss_page":(context) => TestPrograssBar(title: "prograss"),
        "linelayout_page":(context) => TestLineLayout(title: "TestLineLayout"),
        "flexlayout_page":(context) => TestFlexLayout(title: "TestFlexLayout"),
        "decbox_page":(context) => TestDecBox(title: "TestDecratedBox"),
        "transform_page":(context) => TestTransform(title: "Transform"),
        "scollview_page":(context) => TestScollView(title: "ScollView"),
        "listview_page":(context) => TestListView(title: "ListView"),
        "willpopscope_page":(context) => WillPopScopeTest(title: "WillPopScopeTest"),
        "dialog_page":(context) => TestDialog(title: "DiglogTest"),
        "gesture_page":(context) => TestGesture(title: "GestureTest"),
        "gesture_page2":(context) => TestGestureRecongizer(title: "GestureTest2"),
        "StaggerAnimation_page":(context) => StaggerRoute(),
        "SwitchAnimation_page":(context) => AnimatedSwitcherCounterRoute(),
        "baidu_page":(context) => HttpTestRoute(),
        "final_page":(context) => ModifyCounter(title: "计数器（改）"),
        // "first_page":(context) => FirstPage(title: "首页"),
        // "test_page":(context) => TestPage(title: "测试页"),
        "/":(context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "counter_page");
            }, child: Text("CounterTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "route_page");
            }, child: Text("RouteTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "image_page");
            }, child: Text("ImageTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "prograss_page");
            }, child: Text("PrograssTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "linelayout_page");
            }, child: Text("LineLayoutTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "flexlayout_page");
            }, child: Text("FlexLayoutTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "decbox_page");
            }, child: Text("DecoratedBoxTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "transform_page");
            }, child: Text("TransformTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "scollview_page");
            }, child: Text("ScollViewTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "listview_page");
            }, child: Text("ListViewTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "willpopscope_page");
            }, child: Text("WillPopScopTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "dialog_page");
            }, child: Text("DialogTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "gesture_page");
            }, child: Text("GestureTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "gesture_page2");
            }, child: Text("GestureTest2")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "StaggerAnimation_page");
            }, child: Text("StaggerAnimation")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "SwitchAnimation_page");
            }, child: Text("SwitchAnimationTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "baidu_page");
            }, child: Text("BaiduTest")),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "final_page");
            }, child: Text("计数器（改）")),
            // TextButton(onPressed: (){
            //   Navigator.pushNamed(context, "first_page");
            // }, child: Text("首页")),
            // TextButton(onPressed: (){
            //   Navigator.pushNamed(context, "test_page");
            // }, child: Text("测试页")),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods. */
    );
  }
}
