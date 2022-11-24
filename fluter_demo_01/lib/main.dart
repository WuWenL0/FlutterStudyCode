import 'package:flutter/material.dart';
import './myIconFont.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("app"),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  List<Widget> _initGridViewData(){
    List<Widget> tempList = [];
    for(var i=0;i<20;i++){
      tempList.add(
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(color: Colors.blue),
          child: Text(
            "第$i个元素",
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    }
    return tempList;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      padding: EdgeInsets.all(10),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1.2,
      maxCrossAxisExtent: 150,
      children: _initGridViewData(),
    );
  }
}
