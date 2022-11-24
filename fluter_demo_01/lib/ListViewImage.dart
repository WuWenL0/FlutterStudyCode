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
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      children: [
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
        ListTile(
          leading: Image.network("http://contentcms-bj.cdn.bcebos.com/cmspic/e3d2d21070a46532e7f749fb03bb9129.jpeg"),
          title: Text("柬埔寨智库专家：中国式现代化将促进世界经济增长"),
        ),
        Divider(),
      ],
    );
  }
}
