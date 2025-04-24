import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/screens/taskspage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).focusColor, width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: CupertinoButton(
            onPressed:
                () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Taskspage()),
                ),
            child: Text(
              "Welcome",
              style: TextStyle(
                color: Theme.of(context).focusColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Center(
          child: CupertinoButton(
            child: Icon(
              CupertinoIcons.info,
              color: Theme.of(context).focusColor,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
