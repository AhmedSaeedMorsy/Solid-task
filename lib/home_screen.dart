import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List colors = [
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.tealAccent,
    Colors.blue,
    Colors.brown,
    Colors.deepOrange,
    Colors.purple,
    Colors.grey,
    Colors.pinkAccent,
  ];
  Random random = Random();
  int index = 0;
  void changeIndex() {
    setState(
      () {
        index = random.nextInt(11);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors[index],
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Solid Task",
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Colors.white,
                fontSize: 20.0,
              ),
        ),
        centerTitle: true,
      ),
      body: InkWell(
        onTap: () {
          changeIndex();
        },
        child: Center(
          child: Text(
            "Hello there",
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 22.0,
                  color: Colors.black,
                ),
          ),
        ),
      ),
    );
  }
}
