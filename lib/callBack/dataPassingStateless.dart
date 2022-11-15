import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/Appconstants.dart';
import 'package:textfield/Routes/App_routes.dart';
import 'package:textfield/callBack/pass_model.dart';

class pass extends StatelessWidget {
  const pass({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    print('arg is ${arg.name}');
    //   final name = arg['name'];
    return Scaffold(
      appBar: AppBar(title: Text('Passing data')),
      body: Column(
        children: [
          Card(
              child: Text(arg.name),
              )
        ],
      ),
    );
  }
}
