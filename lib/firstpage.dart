import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Stack(
          children: [
            Container(
              // decoration: BoxDecoration(
              //   color: Colors.deepPurpleAccent,
              // ),
              color: const Color.fromARGB(255, 71, 73, 161),
              //width: 375,
              height: 60,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
              // child: Text("你好"),
            ),
            const Positioned(
                width: 100,
                height: 30,
                top: 30,
                left: 30,
                child: Text(
                  "我的办公",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    decoration: TextDecoration.none,
                  ),
                )
            ),
          ],
        ),
        Stack(
          // alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  color: const Color.fromARGB(255, 71, 73, 161),
                ),
                Container(
                  height: 426,
                  color: const Color.fromARGB(255, 240, 240, 240),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 50, 0, 0),
              child: Wrap(
                spacing: 50,
                children: [
                  Column(
                    children: const [
                      Text("待批准",
                        style: TextStyle(
                          color: Color.fromARGB(100, 255, 255, 255),
                          fontSize: 12,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text("50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text("会议提醒",
                        style: TextStyle(
                          color: Color.fromARGB(100, 255, 255, 255),
                          fontSize: 12,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text("50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text("周报",
                        style: TextStyle(
                          color: Color.fromARGB(100, 255, 255, 255),
                          fontSize: 12,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text("50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: const [
                      Text("工作汇报",
                        style: TextStyle(
                          color: Color.fromARGB(100, 255, 255, 255),
                          fontSize: 12,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text("50",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 110,
                left: 35,
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        height: 40,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                          ),
                          color: Colors.white,
                        ),
                        // color: Colors.white,
                        // margin: EdgeInsets.only(bottom: 5),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 130),
                              child: Row(
                                children: [
                                  Image.asset("../Images/icon1.png",
                                    width: 30,
                                  ),
                                  const Text("应用管理",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  const Text("自定义",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  Image.asset("../Images/icon1.png",
                                    width: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                          ),
                          color: Colors.white,
                        ),
                        width: 300,

                        padding: EdgeInsets.all(20),
                        child: Wrap(
                          spacing: 25,
                          runSpacing: 30,
                          children: [
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("流程申请",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("考勤打卡",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("汇报",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("OA审批",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("补卡申请",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("工资单",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("公司报告",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("../Images/icon1.png",
                                  width: 40,
                                ),
                                const Text("规则制度",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)
                            ),
                            color: Colors.white,
                          ),
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 120),
                                    child: Row(
                                      children: [
                                        Image.asset("../Images/icon1.png",
                                          width: 30,
                                        ),
                                        const Text("我的申请",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        const Text("更多",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        Image.asset("../Images/icon1.png",
                                          width: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 100,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("../Images/icon1.png",
                                        width: 30,
                                      ),
                                      const Text("请假申请",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                      ),
                                      const Text("2020/11/23至2022/11/24                     共2天",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(30, 0, 150, 0),
                                        child: const Text("申请时间",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: const Text("待批准",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset("../Images/icon1.png",
                                        width: 30,
                                      ),
                                      const Text("请假申请",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                      ),
                                      const Text("2022/11/23至2022/11/24                     共2天",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(30, 0, 130, 0),
                                        child: const Text("申请时间",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: const Text("正在审批中",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 12,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ],
    );
  }
}