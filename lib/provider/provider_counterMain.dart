
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'counter_logic.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterStateProvider = Provider.of<CounterStateNotifier>(context);

    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Container(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                counterStateProvider.increment();
              },
              child: Text("+")),
          Text("counter value is ${counterStateProvider.counter}"),
          TextButton(
              onPressed: () {
                counterStateProvider.decriment();
              },
              child: Text("-")),
        ],
      )),
    );
  }
}