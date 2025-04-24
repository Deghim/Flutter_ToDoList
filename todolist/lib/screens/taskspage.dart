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
    return CupertinoPageScaffold(
      backgroundColor: Theme.of(context).primaryColor,
      navigationBar: CupertinoNavigationBar(
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
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Filterbar(),
            Expanded(child: Text("Hola mama")),
          ],
        ),
      ),
    );
  }
}
