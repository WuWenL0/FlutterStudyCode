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
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const TestLogin();
                }))
              },
              child: const Text("登录输入框"),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const TestFouce();
                }))
              },
              child: const Text("焦点测试"),
            ),
            ElevatedButton(
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const TestForm();
                }))
              },
              child: const Text("表单测试"),
            ),
          ],
        ),
      ),
    );
  }
}

class TestForm extends StatefulWidget {
  const TestForm({super.key});

  @override
  State<TestForm> createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  //定义一个controller
  TextEditingController _unameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("输入框及表单"),
        ),
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: const InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person),
                ),
                validator: (value) {
                  return value!.trim().isNotEmpty ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                autofocus: true,
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  icon: Icon(Icons.lock),
                ),
                validator: (value) {
                  return value!.trim().length > 5 ? null : "密码不能少于6位";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("登录"),
                      ),
                      onPressed: () {
                        if ((_formKey.currentState as FormState).validate()) {
                          //验证通过提交数据
                        }
                      },
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class TestLogin extends StatefulWidget {
  const TestLogin({super.key});

  @override
  State<TestLogin> createState() => _TestLoginState();
}

class _TestLoginState extends State<TestLogin> {
  //定义一个controller
  TextEditingController _unameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    //监听输入改变
    _unameController.addListener(() {
      print(_unameController.text);
    });
    _unameController.text = "hello world!";
    _unameController.selection = TextSelection(
        baseOffset: 2, extentOffset: _unameController.text.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("输入框及表单"),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
            hintColor: Colors.grey[200], //定义下划线颜色
            inputDecorationTheme: InputDecorationTheme(
                labelStyle: TextStyle(color: Colors.grey), //定义label字体样式
                hintStyle:
                    TextStyle(color: Colors.grey, fontSize: 14.0) //定义提示文本样式
                ),
          ),
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                decoration: const InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person)),
                controller: _unameController,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  prefixIcon: Icon(Icons.lock),
                  hintStyle: TextStyle(color: Colors.red, fontSize: 13.0),
                ),
                obscureText: true,
                controller: _passwordController,
              ),
              ElevatedButton(
                onPressed: () {
                  print(_unameController.text);
                  print(_passwordController.text);
                },
                child: Text("提交"),
              ),
              Container(
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "电子邮件地址",
                      prefixIcon: Icon(Icons.email),
                      border: InputBorder.none, //隐藏下划线
                    )),
                decoration: BoxDecoration(
                    // 下滑线浅灰色，宽度1像素
                    border: Border(
                        bottom: BorderSide(color: Colors.grey, width: 1.0))),
              ),
            ],
          ),
        ));
  }
}

class TestFouce extends StatefulWidget {
  const TestFouce({super.key});

  @override
  State<TestFouce> createState() => _TestFouceState();
}

class _TestFouceState extends State<TestFouce> {
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  @override
  Widget build(BuildContext context) {
    // 监听焦点变化
    focusNode1.addListener(() {
      print(focusNode1.hasFocus);
    });

    return Scaffold(
      appBar: AppBar(
        title: Text("焦点测试"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "input1",
              // 未获得焦点下划线设为灰色
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
              ),
              //获得焦点下划线设为蓝色
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
            focusNode: focusNode1,
          ),
          TextField(
            decoration: InputDecoration(labelText: "input2"),
            focusNode: focusNode2,
          ),
          ElevatedButton(
            onPressed: (() {
              // FocusScope.of(context).requestFocus(focusNode2);
              if (focusScopeNode == null) {
                focusScopeNode = FocusScope.of(context);
              }
              focusScopeNode?.requestFocus(focusNode2);
            }),
            child: Text("移动焦点"),
          ),
          ElevatedButton(
            onPressed: (() {
              focusNode1.unfocus();
              focusNode2.unfocus();
            }),
            child: Text("隐藏键盘"),
          ),
        ],
      ),
    );
  }
}
