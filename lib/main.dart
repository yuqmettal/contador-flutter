import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MyApp());
  }
  
  class MyApp extends StatelessWidget {
    const MyApp({Key key}) : super(key: key);
  
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Center(child: Text('Hola mundo'),),
      );
    }
  }