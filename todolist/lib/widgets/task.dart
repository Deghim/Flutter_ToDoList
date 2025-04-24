import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(width: 10),
            GestureDetector(
              child: Icon(
                CupertinoIcons.checkmark_alt_circle,
                color: Theme.of(context).focusColor,
                size: 24,
              ),
              onTap: () {},
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      "Task Title",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Task Description",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Container(height: 1, color: Colors.grey),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
