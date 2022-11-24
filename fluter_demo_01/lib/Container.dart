import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("图片"),
      ),
      body: Column(
        children: const [MyApp(), MyButton()],
      ),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
        // transform: Matrix4.translationValues(40, 0, 0),
        // transform: Matrix4.rotationZ(0.2),
        transform: Matrix4.skewY(0.2),
        alignment: Alignment.center,
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 20.0)],
            gradient:
            const RadialGradient(colors: [Colors.red, Colors.yellow])),
        child: const Text(
          "你好",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 200,
      height: 40,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Text(
        "按钮",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
