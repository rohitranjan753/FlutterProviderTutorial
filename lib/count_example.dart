import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertutorial/count_provider.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    print("Bluid");
    return Scaffold(
      appBar: AppBar(
        title: Text('Count'),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return Text(value.count.toString(),
                style: TextStyle(fontSize: 40, color: Colors.deepOrange),
                textAlign: TextAlign.center);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 2), (timer) {
      countProvider.setCount();
    });
  }
}
