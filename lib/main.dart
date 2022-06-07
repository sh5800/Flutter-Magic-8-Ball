import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  // const BallPage({Key key}) : super(key: key);

  // const BallPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Ask your question'),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[300],
      body: const Ball(),
    ));
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballNumber.png'),
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
