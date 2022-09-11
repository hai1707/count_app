// ignore_for_file: avoid_unnecessary_containers

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
  int _count = 0;
  int _countTwo = 0;
  int _sum = 0;
  int _count3 = 0;
  final myController = TextEditingController();
  @override
  void setState(VoidCallback fn) {
    // ignore: todo
    // TODO: implement setState
    _count;
    _countTwo;
    // _count3 = int.parse(_count3Str);
    _sum = _count+_countTwo + 1;
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
            // Nút thứ 1
            FloatingActionButton(backgroundColor: (Colors.orange), 
                onPressed: () {setState(() {_count++;});},
                child: const Icon(Icons.plus_one)),
            FloatingActionButton(
                onPressed: (){setState(() {
                  _sum=0;_countTwo=0; _count=0;_count3 = 0;});},
                tooltip:"Xóa hết",
                child: const Icon(Icons.clear),
            ),
            // Nút thứ 3
            FloatingActionButton(backgroundColor: (Colors.red), 
                onPressed: () { setState(() {
                  _countTwo++;
                }); },
                child: const Icon(Icons.plus_one)
              ),  
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
                onChanged: (val){
                  setState(() {
                  _count3 = int.parse(val);});
                },
                textInputAction: TextInputAction.go,
                textAlign: TextAlign.center,
                controller: myController,
                maxLength: 1,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly]
                )  
            ),
          // const SizedBox(height: 100),
          Center(
            child: Wrap(
              spacing: 50,
              alignment: WrapAlignment.center,
            children: [
              Container(
                  // margin: const EdgeInsets.all(15),
                  child: Text("Số thứ ba : $_count3",style: const TextStyle(color: Colors.orange),)
              ),
              Container(
                  child: Text("Số thứ nhất : $_count",style: const TextStyle(color: Colors.orange),)
                ),
              Container(
                child: Text("Số thứ hai : $_countTwo",style: const TextStyle(color: Colors.red),),
              ),
            ],
          ),
          ),
          Container(
                margin: const EdgeInsets.only(top: 50),
                child: Text("Tổng 2 số : $_count + $_countTwo = $_sum"),
              ),
        ],
      ),
      ),
    );
  }
}