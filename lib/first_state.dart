import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class FirstStatefulWidget extends StatefulWidget {
  FirstStatefulWidget({Key key}) : super(key: key);

  @override
  _FirstStatefulWidgetState createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<FirstStatefulWidget> {
  String _theState = "0";
  int _actualWordType = 0;
  final _random = new Random();

  int next(int min, int max) => min + _random.nextInt(max - min);

  @override
  void initState() {
    super.initState();
    setRandomWord();
  }

  void setRandomWord() {
    var option = next(0, 2);
    var randomItem = "";
    if (option == 0) {
      print("change to noun");
      randomItem = (nouns.toList()..shuffle()).first;
    } else {
      print("change to adjective");
      randomItem = (adjectives.toList()..shuffle()).first;
    }

    setState(() {
      _theState = randomItem;
      _actualWordType = option;
    });
  }

  void _onPressed(int option) {
    if (option == _actualWordType) {
      print("good");
    } else {
      print("not good");
    }
    setRandomWord();
  }

  void _onReset() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstStatefulWidget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("$_theState"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () => _onPressed(0), child: Text("Noun")),
              ElevatedButton(
                  onPressed: () => _onPressed(1), child: Text("Adjective"))
            ],
          ),
          ElevatedButton(onPressed: () => _onReset(), child: Text("Reset")),
        ],
      ),
    );
  }
}
