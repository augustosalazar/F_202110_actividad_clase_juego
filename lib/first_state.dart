import 'package:flutter/material.dart';

class FirstStatefulWidget extends StatefulWidget {
  FirstStatefulWidget({Key key}) : super(key: key);

  @override
  _FirstStatefulWidgetState createState() => _FirstStatefulWidgetState();
}

class _FirstStatefulWidgetState extends State<FirstStatefulWidget> {
  String _theState = "0";

  void _onPressed(String option) {
    setState(() {
      _theState = option;
    });
  }

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
                  onPressed: () => _onPressed("1"), child: Text("1")),
              ElevatedButton(onPressed: () => _onPressed("2"), child: Text("2"))
            ],
          ),
        ],
      ),
    );
  }
}
