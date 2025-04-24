import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/filterbar.dart';

class Taskspage extends StatefulWidget {
  const Taskspage({super.key});

  @override
  State<Taskspage> createState() => _TaskspageState();
}

class _TaskspageState extends State<Taskspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: CupertinoNavigationBar(
        border: Border(bottom: BorderSide(color: Colors.transparent)),
        backgroundColor: Theme.of(context).primaryColor,
        leading: CupertinoButton(
          child: Icon(CupertinoIcons.back, color: Theme.of(context).focusColor),
          onPressed: () => Navigator.pop(context),
        ),
        middle: const Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            "Tasks",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [Filterbar(), Expanded(child: Text("Hola mama"))],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Center(
          child: CupertinoButton(
            child: Icon(
              CupertinoIcons.add_circled,
              color: Theme.of(context).focusColor,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
