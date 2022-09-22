import 'package:flutter/material.dart';

class SeacondPage extends StatefulWidget {
  const SeacondPage({Key? key}) : super(key: key);

  @override
  State<SeacondPage> createState() => _SeacondPageState();
}

class _SeacondPageState extends State<SeacondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        padding: EdgeInsets.all(10),
        children: [
          Container(
            color: Colors.amberAccent,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
