// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _count = 0, _countTwo = 0, _sum = 0, _count3 = 0, _count4 = 0, temp = 0;
  
  final myController = TextEditingController();
  @override
  void setState(VoidCallback fn) {
    // ignore: todo
    // TODO: implement setState
    temp = Random().nextInt(10);
    _sum = (_count + _countTwo + _count3 + _count4) + 1;
    super.setState(fn);
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
                backgroundColor: (Colors.blueGrey),
                onPressed: () {
                  setState(() {
                    _count4 = temp;
                  });
                },
                child: const Icon(Icons.question_mark)),
            // Nút thứ 1
            FloatingActionButton(
                backgroundColor: (Colors.orange),
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                child: const Icon(Icons.plus_one)),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  _sum = 0;
                  _countTwo = 0;
                  _count = 0;
                  _count3 = 0;
                  _count4 = 0;
                });
              },
              tooltip: "Xóa hết",
              child: const Icon(Icons.clear),
            ),
            // Nút thứ 3
            FloatingActionButton(
                backgroundColor: (Colors.red),
                onPressed: () {
                  setState(() {
                    _countTwo++;
                  });
                },
                child: const Icon(Icons.plus_one)),
          ],
        ),
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 50,
                margin: const EdgeInsets.only(bottom: 80),
                child: TextField(
                    onChanged: (val) {
                      setState(() {
                      });
                        _count3 = int.parse(myController.text);
                    },
                    textInputAction: TextInputAction.go,
                    textAlign: TextAlign.center,
                    controller: myController,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ])),
            // const SizedBox(height: 100),
            Center(
              child: Wrap(
                spacing: 50,
                alignment: WrapAlignment.center,
                children: [
                  Container(
                      // margin: const EdgeInsets.all(15),
                      child: Text(
                    "Số thứ tư : $_count4",
                    style: const TextStyle(color: Colors.blueGrey),
                  )),
                  Container(
                      // margin: const EdgeInsets.all(15),
                      child: Text(
                    "Số thứ ba : $_count3",
                    style: const TextStyle(color: Colors.orange),
                  )),
                  Container(
                      child: Text(
                    "Số thứ nhất : $_count",
                    style: const TextStyle(color: Colors.orange),
                  )),
                  Container(
                    child: Text(
                      "Số thứ hai : $_countTwo",
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: Text("Tổng 4 số : $_count + $_countTwo + $_count3 + $_count4 = $_sum"),
            ), 
          ],
        ),
      ),
    );
  }
}
