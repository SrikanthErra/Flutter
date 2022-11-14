import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:textfield/provider/list_logicClass.dart';

import '../Routes/App_pages.dart';
import '../Routes/App_routes.dart';

class list_provider extends StatelessWidget {
  list_provider({super.key});
  @override
  Widget build(BuildContext context) {
    final textStateProvider =
        Provider.of<textStateNotifier>(context);

    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Data'))),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: textStateProvider.listProvider.length,
            itemBuilder: (context, index) {
              final details = textStateProvider.listProvider[index];
              return Card(
                child: ListTile(
                  title: Text(details),
                ),
              );
            },
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            Navigator.pushNamed(context, AppRoutes.addTextData);
          }),
          child: Icon(Icons.add),
        ));
  }
}
