import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: CupertinoButton(
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Theme.of(context).focusColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(child: Text("hola ")),
    );
  }
}
