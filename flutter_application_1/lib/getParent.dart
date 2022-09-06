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
      ),
      home: const GetStateObjectRoute(),
    );
  }
}

class GetStateObjectRoute extends StatefulWidget {
  const GetStateObjectRoute({Key? key}) : super(key: key);

  @override
  State<GetStateObjectRoute> createState() => _GetStateObjectRouteState();
}

class _GetStateObjectRouteState extends State<GetStateObjectRoute> {
  //定义一个globalKey, 由于GlobalKey要保持全局唯一性，我们使用静态变量存储
  static GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        title: Text("子树中获取State对象"),
      ),
      body: Center(
        child: Column(
          children: [
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  // 查找父级最近的Scaffold对应的ScaffoldState对象
                  ScaffoldState _state =
                      context.findAncestorStateOfType<ScaffoldState>()!;
                  // 打开抽屉菜单
                  _state.openDrawer();
                },
                child: Text('打开抽屉菜单1'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  // 查找父级最近的Scaffold对应的ScaffoldState对象
                  ScaffoldState _state = Scaffold.of(context);
                  // 打开抽屉菜单
                  _state.openDrawer();
                },
                child: Text('打开抽屉菜单2'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  _globalKey.currentState?.openDrawer();
                },
                child: Text('打开抽屉菜单3'),
              );
            }),
            Builder(builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("我是SnackBar")),
                  );
                },
                child: Text('显示SnackBar'),
              );
            }),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}


/**
 * 生命周期
 */
// class StateLifecycleTest extends StatelessWidget {
//   const StateLifecycleTest({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const CounterWidget();
//   }
// }

// class CounterWidget extends StatefulWidget {
//   const CounterWidget({Key? key, this.initValue = 0});

//   final int initValue;

//   @override
//   _CounterWidgetState createState() => _CounterWidgetState();
// }

// class _CounterWidgetState extends State<CounterWidget> {
//   int _counter = 0;

//   @override
//   void initState() {
//     super.initState();
//     //初始化状态
//     _counter = widget.initValue;
//     print("initState");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("build");
//     return Scaffold(
//       body: Center(
//         child: TextButton(
//           child: Text('$_counter'),
//           //点击后计数器自增
//           onPressed: () => setState(
//             () => ++_counter,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void didUpdateWidget(CounterWidget oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     print("didUpdateWidget ");
//   }

//   @override
//   void deactivate() {
//     super.deactivate();
//     print("deactivate");
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     print("dispose");
//   }

//   @override
//   void reassemble() {
//     super.reassemble();
//     print("reassemble");
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     print("didChangeDependencies");
//   }
// }
