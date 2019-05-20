import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      body: BallPageState(),
      backgroundColor: Colors.blue,
    );
  }
}

class BallPageState extends StatefulWidget {
  @override
  _BallPageStateState createState() => _BallPageStateState();
}

class _BallPageStateState extends State<BallPageState> {
  var ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          child: Image.asset('images/ball$ballNumber.png'),
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
//          highlightColor: Colors.transparent,
//          splashColor: Colors.transparent,
          shape: CircleBorder(
            side: BorderSide(
              style: BorderStyle.solid,
              color: Colors.transparent,
            ),
          )),
    );
  }
}
