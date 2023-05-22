// ignore_for_file: prefer_const_constructors_in_immutables, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:solid_task/home_screen.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();

  static final MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Solid Task',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
