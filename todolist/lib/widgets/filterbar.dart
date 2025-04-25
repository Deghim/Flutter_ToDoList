import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Filterbar extends StatefulWidget {
  final Function(int) filtered;
  const Filterbar({super.key, required this.filtered});

  @override
  State<Filterbar> createState() => _FilterbarState();
}

class _FilterbarState extends State<Filterbar> {
  // bool active = true;
  int filterState = 0;
  final List<String> state = ["In Progress", "Completed", "All Tasks"];
  final List<IconData> icons = [
    Icons.loop,
    Icons.check_circle_outline_outlined,
    Icons.all_out,
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: SizedBox(
        // decoration: const BoxDecoration(border: Border(bottom: BorderSide())),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Text("Status: "),
                Text(
                  state[filterState],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            CupertinoButton(
              child: Icon(
                icons[filterState],
                color: Theme.of(context).focusColor,
              ),
              onPressed: () {
                setState(() {
                  if (filterState == 2) {
                    filterState = 0;
                  } else {
                    filterState += 1;
                  }
                  widget.filtered(filterState);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
