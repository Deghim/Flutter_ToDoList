import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/models/taskmodel.dart';

class Task extends StatelessWidget {
  final Taskmodel taskData;
  final Function onTog;
  final VoidCallback onDelete;

  const Task({
    super.key,
    required this.taskData,
    required this.onTog,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(width: 10),
            if (!taskData.completed) ...[
              GestureDetector(
                child: Icon(
                  CupertinoIcons.checkmark_alt_circle,
                  color: Theme.of(context).focusColor,
                  size: 24,
                ),
                onTap: () {
                  debugPrint("Se completo la tarea");
                  onTog(true);
                },
              ),
            ],
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      taskData.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "${taskData.description}.",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Container(height: 1, color: Colors.grey),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: onDelete,
              child: Icon(
                CupertinoIcons.xmark_circle,
                color: Colors.grey,
                size: 24,
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
