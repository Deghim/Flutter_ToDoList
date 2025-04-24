import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filterbar extends StatefulWidget {
  const Filterbar({super.key});

  @override
  State<Filterbar> createState() => _FilterbarState();
}

class _FilterbarState extends State<Filterbar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: Container(
        decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Text("Status: "),
                Text("Active", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            CupertinoButton(
              child: Icon(
                Icons.filter_list,
                color: Theme.of(context).focusColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
