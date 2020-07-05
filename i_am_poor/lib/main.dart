import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('I am poor'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: AssetImage('images/playstore.png'),
          alignment: Alignment.topCenter,
        ),
      ),
      backgroundColor: Colors.blueGrey,
    )));
