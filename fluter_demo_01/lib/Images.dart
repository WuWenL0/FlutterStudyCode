import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("标题"),
      ),
      body: Column(
        children: const [
          MyApp(),
          SizedBox(
            height: 20,
          ),
          Circular(),
          SizedBox(
            height: 20,
          ),
          ClipImage(),
          SizedBox(
            height: 20,
          ),
          LocalImage(),
        ],
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
        height: 150,
        width: 150,
        decoration: const BoxDecoration(color: Colors.yellow),
        child: Image.network(
          "https://www.itying.com/themes/itying/images/ionic4.png",
          // fit: BoxFit.cover,
          // alignment: Alignment.center,
          repeat: ImageRepeat.repeatX,
        ),
      ),
    );
  }
}

class Circular extends StatelessWidget {
  const Circular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(75),
        color: Colors.yellow,
        image: const DecorationImage(
            image: NetworkImage(
              "https://www.itying.com/themes/itying/images/ionic4.png",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}

class ClipImage extends StatelessWidget {
  const ClipImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.network(
        "https://www.itying.com/themes/itying/images/ionic4.png",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}

class LocalImage extends StatelessWidget {
  const LocalImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: const BoxDecoration(color: Colors.yellow),
      child: Image.asset(
        "images/a.jpg",
        fit: BoxFit.cover,
      ),
    );
  }
}
