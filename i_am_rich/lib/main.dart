import 'package:flutter/material.dart';

// The main function is the starting point for all our Flutter apps
void main() => runApp(
      MaterialApp(
          home: Scaffold(
              body: Center(
                child: Image(
//                  image: NetworkImage( 'https://assets.entrepreneur.com/content/3x2/2000/20160305000536-diamond.jpeg'),
                  image: AssetImage('images/diamond.png'),
                  alignment: Alignment.topCenter,
                ),
              ),
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey,
      )),
    );
