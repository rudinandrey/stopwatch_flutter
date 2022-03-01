import 'dart:async';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int counter = 0;
  final mylist = <int>[];

  @override
  void initState() {
    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   setState(() {
    //     counter += 1;
    //   });
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter"),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: Text("Увеличить"),
            ),
            ElevatedButton(
              onPressed: () {
                mylist.add(counter);
                print(mylist);
                setState(() {
                  counter = 0;
                });
              },
              child: Text("Добавить"),
            )
          ],
        ),
      ),
    );
  }
}
