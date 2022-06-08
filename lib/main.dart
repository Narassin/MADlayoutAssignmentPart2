import 'package:flutter/material.dart';
import 'home.dart';
import 'tabschild.dart';

void main() {
  runApp(const IoTApp());
}

class IoTApp extends StatelessWidget {
  const IoTApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Assignment 2B',
        home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My IoT Manager'),
          backgroundColor: const Color.fromARGB(255, 87, 87, 87),
        ),
        body: DefaultTabController(
            length: 3,
            child: Column(
              children: [TabBox(), TabSon()],
            )));
  }
}
