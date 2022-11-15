import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/Wrestlers/AppInputTextfield.dart';
import 'package:textfield/Wrestlers/database_helper.dart';
import 'package:textfield/Wrestlers/wrestler_model.dart';

import '../Routes/App_routes.dart';

class wrestler_list extends StatefulWidget {
  wrestler_list({super.key});

  @override
  State<wrestler_list> createState() => _wrestler_listState();
}

class _wrestler_listState extends State<wrestler_list> {
  List<wrestler_model> wrestlerDetailsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Wrestlers list'))),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: wrestlerDetailsList.length,
            itemBuilder: (context, index) {
              final wrestler = wrestlerDetailsList[index];
              return Card(
                color: Colors.amber,
                child: ListTile(
                  title: Column(
                    children: [
                      Text(wrestler.name ?? ""),
                      Text(wrestler.age ?? ""),
                      Image.file(
                        File(wrestler.image ?? ""),
                        width: 100,
                        height: 100,
                      ),
                      Text(wrestler.userId ?? ""),
                      TextButton(
                          onPressed: (() {
                            Navigator.pushNamed(context, AppRoutes.update);
                          }),
                          child: Text('Update')),
                      TextButton(
                          onPressed: (() async {
                            final DatabaseHelper _databaseService =
                                DatabaseHelper.instance;
                            final userIdis = wrestler.userId;
                            final saved = await _databaseService
                                .delete(userIdis.toString());
                            print(userIdis);
                            Navigator.pop(context);
                          }),
                          child: Text('Delete')),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WrestlerList();
  }

  WrestlerList() async {
    DatabaseHelper _dbInstance = DatabaseHelper.instance;
    await _dbInstance.queryAllRows('Wrestlers').then((value) {
      setState(() {
        value.forEach((element) {
          wrestlerDetailsList.add(wrestler_model(
            image: element['image'],
            name: element['name'],
            age: element['age'],
            userId: element['userId'],
            id: element['id'],
          ));
        });
      });
      print('getdetails$value');
    });
  }
}
