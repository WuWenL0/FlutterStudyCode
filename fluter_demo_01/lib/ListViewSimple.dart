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

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
        Divider(),
        ListTile(
          title: Text("我是一个列表"),
        ),
      ],
    );
  }
}
