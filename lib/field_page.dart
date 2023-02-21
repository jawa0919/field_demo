import 'package:flutter/material.dart';

class FieldPage extends StatefulWidget {
  const FieldPage({super.key});

  @override
  State<FieldPage> createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: Container(
            color: Colors.red,
            child: Stack(children: [
              Column(
                children: const [
                  Text(
                    "测试页面",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "下方白色输入框为问题2，可用于复现问题2",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "可直接右滑可直接复现问题3",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )
                ],
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                    child: const Center(
                      child: TextField(),
                    ),
                  ))
            ]),
          ),
        ),
        onWillPop: () async {
          return Future.value(false);
        });
  }
}
