import 'package:flutter/material.dart';

class OurFirstStatelessWidget extends StatelessWidget {
  OurFirstStatelessWidget({this.theText});
  final String theText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Our first app'),
        ),
        body: Column(
          children: [
            Center(child: Text('$theText')),
            ElevatedButton(
              onPressed: () {},
              child: Text('ElevatedButton button'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('TextButton button'),
            )
          ],
        ));
  }
}
