import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filterbar extends StatefulWidget {
  final Function(bool) filtered;
  const Filterbar({super.key, required this.filtered});

  @override
  State<Filterbar> createState() => _FilterbarState();
}

class _FilterbarState extends State<Filterbar> {
  bool active = true;
  String state = "Active";
  dynamic filterIcon = Icons.loop;
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
                Text(state, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            CupertinoButton(
              child: Icon(filterIcon, color: Theme.of(context).focusColor),
              onPressed: () {
                setState(() {
                  if (active) {
                    state = "Completed";
                    filterIcon = Icons.check_box_outlined;
                    active = !active;
                  } else {
                    state = "Active";
                    filterIcon = Icons.loop;
                    active = !active;
                  }
                  widget.filtered(active);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
