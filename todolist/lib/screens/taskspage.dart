import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todolist/models/taskmodel.dart';
import 'package:todolist/widgets/filterbar.dart';
import 'package:todolist/widgets/task.dart';
import 'package:todolist/widgets/taskform.dart';

class Taskspage extends StatefulWidget {
  const Taskspage({super.key});

  @override
  State<Taskspage> createState() => _TaskspageState();
}

class _TaskspageState extends State<Taskspage> {
  final _prefsKey = 'tasks';
  List<Taskmodel> tasks = [];
  bool filter = true;

  late String title = "";
  late String description = "";
  late bool completed = false;
  late Map<String, Object> data = {};

  @override
  void initState() {
    _loadData();
    super.initState();
  }

  Future<void> _loadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final info = prefs.getString(_prefsKey);
    if (info != null && info.isNotEmpty) {
      setState(() {
        tasks = Taskmodel.decodeList(info);
      });
    }
  }

  Future<void> _saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefsKey, Taskmodel.encodeList(tasks));
  }

  void addTask(String title, String description) {
    setState(() {
      tasks.add(Taskmodel(title: title, description: description));
    });
    _saveTasks();
  }

  void toggleCompleted(int index, bool newValue) {
    setState(() {
      tasks[index].completed = newValue;
    });
    _saveTasks();
  }

  void deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
    _saveTasks();
  }

  void openNewTaskForm() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 500,
          width: MediaQuery.of(context).size.width,
          child: Taskform(onSub: addTask),
        );
      },
    );
  }

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
            Filterbar(
              filtered: (val) {
                setState(() {
                  filter = val;
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  if (tasks[index].completed != filter) {
                    return Task(
                      taskData: tasks[index],
                      onTog: (val) => toggleCompleted(index, val),
                      onDelete: () => deleteTask(index),
                    );
                  } else {
                    return Container();
                  }
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
              openNewTaskForm();
            },
          ),
        ),
      ),
    );
  }
}
