import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/widgets/filterbar.dart';
import 'package:todolist/widgets/task.dart';
import 'package:todolist/widgets/taskform.dart';

class Taskspage extends StatefulWidget {
  const Taskspage({super.key});

  @override
  State<Taskspage> createState() => _TaskspageState();
}

class _TaskspageState extends State<Taskspage> {
  // Todo: Modificar la lista para las tasks
  final List<Task> tasks = [Task(), Task(), Task(), Task(), Task(), Task()];

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
          children: [
            Filterbar(),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Task();
                },
              ),
            ),
          ],
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
            onPressed: () {
              _showBottom(context);
            },
          ),
        ),
      ),
    );
  }
}

Future<void> _showBottom(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        height: 500,
        width: MediaQuery.of(context).size.width,
        child: Taskform(),
      );
    },
  );
}
