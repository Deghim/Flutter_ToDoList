import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolist/screens/info.dart';
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
          height: 70,
          width: 150,
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
            child: AnimatedTextKit(
              repeatForever: true,
              pause: const Duration(milliseconds: 200),
              animatedTexts: [
                TypewriterAnimatedText(
                  'Welcome',
                  textStyle: TextStyle(
                    color: Theme.of(context).focusColor,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
                TypewriterAnimatedText(
                  'Bienvenido',
                  textStyle: TextStyle(
                    color: Theme.of(context).focusColor,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
                TypewriterAnimatedText(
                  'Bonjour',
                  textStyle: TextStyle(
                    color: Theme.of(context).focusColor,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 150),
                ),
              ],
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Info()),
              );
            },
          ),
        ),
      ),
    );
  }
}
