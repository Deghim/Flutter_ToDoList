import 'package:flutter/material.dart';
import 'package:todolist/app/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "To Do List",
      theme: ThemeData(primaryColor: Colors.white, focusColor: Colors.black),
      home: const Home(),
    );
  }
}
