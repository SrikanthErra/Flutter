import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/Shared_pref/shared_pref.dart';

class shared_pref extends StatefulWidget {
  const shared_pref({super.key});

  @override
  State<shared_pref> createState() => _shared_prefState();
}

class _shared_prefState extends State<shared_pref> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Shared_pref_validate'))),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () {
                    shared_pref_class().write_data('name', 'Srikanth');
                  },
                  child: Text(
                    'Write',
                    style: TextStyle(fontSize: 30),
                  )),
              TextButton(
                  onPressed: () async {
                    final value = await shared_pref_class().read_data('name');
                    print('The name is  $value');
                  },
                  child: Text(
                    'Read',
                    style: TextStyle(fontSize: 30),
                  )),
              TextButton(
                  onPressed: () {
                    shared_pref_class().deleteTheData('name');
                  },
                  child: Text(
                    'Delete',
                    style: TextStyle(fontSize: 30),
                  )),
              TextButton(
                  onPressed: () {
                    shared_pref_class().clearTheData();
                  },
                  child: Text(
                    'Clear',
                    style: TextStyle(fontSize: 30),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
