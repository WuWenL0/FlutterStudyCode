import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //注册路由表
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: NetworkImage(
                  "https://wx1.sinaimg.cn/mw2000/0083xpcVly1ggvvkllmulj30it0qa0v5.jpg"),
              width: 100.0,
            ),
            Image.network(
              "https://wx1.sinaimg.cn/mw2000/0083xpcVly1ggvvkllmulj30it0qa0v5.jpg",
              width: 100.0,
              fit: BoxFit.none,
            ),
            Image.network(
              "https://wx1.sinaimg.cn/mw2000/0083xpcVly1ggvvkllmulj30it0qa0v5.jpg",
              width: 100.0,
              fit: BoxFit.none,
              color: Colors.red,
              colorBlendMode: BlendMode.difference,
            )
          ],
        ),
      ),
    );
  }
}
