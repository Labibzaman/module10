import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_10/assignment/homescreen.dart';

void main (){
  runApp(TodoApp());
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white
        )
      ),
      home: HomeScreen(),
    );
  }
}


