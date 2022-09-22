// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';

import 'package:count_app/home.dart';
import 'package:count_app/pageSecond.dart';
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
  PageController pageController = PageController();
  List<Widget> pages = [HomePage(), SeacondPage()];
  int _currectTab = 0;
  void onItemTab(int index) {
    setState(() {
      _currectTab = index;
    });
  }

  @override
  void setState(VoidCallback fn) {
    // ignore: todo
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App đếm số"),
        ),
        body: pages[_currectTab],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chu"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "Setting")
          ],
          currentIndex: _currectTab,
          onTap: onItemTab,
        ),
      ),
    );
  }
}
