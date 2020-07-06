import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProfileComponent());
  }
}

class ProfileComponent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileComponentState();
  }
}

class ProfileComponentState extends State<ProfileComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          width: 150.0,
          height: 130.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('images/lina.jpg'),
              ),
              Container(
                width: 100.0,
                height: 15.0,
                child: Text(
                  'Lina Bonturi',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 5.0,
                      color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 100.0,
                height: 10.0,
                child: Text(
                  'Engineer, Nubank',
                  style: TextStyle(fontSize: 3.0, color: Colors.black54),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
