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
            children: <Widget>[ProgressRoute()],
          ),
        ));
  }
}

class ProgressRoute extends StatefulWidget {
  @override
  _ProgressRouteState createState() => _ProgressRouteState();
}

class _ProgressRouteState extends State<ProgressRoute>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    //动画执行时间3秒
    _animationController = AnimationController(
      vsync: this, //注意State类需要混入SingleTickerProviderStateMixin（提供动画帧计时/触发器）
      duration: Duration(seconds: 3),
    );
    _animationController?.forward();
    _animationController?.addListener(() => setState(() => {}));
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
                  .animate(_animationController!), // 从灰色变成蓝色
              value: _animationController?.value,
            ),
          )
        ],
      ),
    );
  }
}


// LinearProgressIndicator(
//   backgroundColor: Colors.grey[200],
//   valueColor: AlwaysStoppedAnimation(Colors.blue),
// ),
// LinearProgressIndicator(
//   backgroundColor: Colors.grey[200],
//   valueColor: AlwaysStoppedAnimation(Colors.blue),
//   value: .5,
// ),
// CircularProgressIndicator(
//   backgroundColor: Colors.grey[200],
//   valueColor: AlwaysStoppedAnimation(Colors.blue),
// ),
// CircularProgressIndicator(
//   backgroundColor: Colors.grey[200],
//   valueColor: AlwaysStoppedAnimation(Colors.blue),
//   value: .5,
// ),
// SizedBox(
//   height: 3,
//   child: LinearProgressIndicator(
//     backgroundColor: Colors.grey[200],
//     valueColor: AlwaysStoppedAnimation(Colors.blue),
//     value: .5,
//   ),
// ),
// SizedBox(
//   height: 100,
//   width: 130,
//   child: CircularProgressIndicator(
//     backgroundColor: Colors.grey[200],
//     valueColor: AlwaysStoppedAnimation(Colors.blue),
//     value: .7,
//   ),
// ),