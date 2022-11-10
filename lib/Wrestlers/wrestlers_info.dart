// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/Wrestlers/AppInputTextfield.dart';
import 'package:textfield/Wrestlers/notifier_list.dart';
import 'package:textfield/Wrestlers/wrestler_image.dart';
import 'package:textfield/Wrestlers/wrestler_model.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'database_helper.dart';

class wrestlers_info extends StatefulWidget {
  const wrestlers_info({super.key});

  @override
  State<wrestlers_info> createState() => _wrestlers_infoState();
}

class _wrestlers_infoState extends State<wrestlers_info> {
  TextEditingController _name = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Wrestlers Information'))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            wrestler_image(),
            AppInputTextfield(
              hintText: 'Enter Wrestler name',
              nameController: _name,
            ),
            TextButton(
                onPressed: (() async {
                  final wrestlerData = wrestler_model(
                      //userId: const Uuid().v1(),
                      image: WrestlerImagePath.value?.path ?? "",
                      name: _name.text);
                  final DatabaseHelper _databaseService =
                      DatabaseHelper.instance;
                  final saved = await _databaseService.insertInto(
                      wrestlerData.toJson(), "Wrestlers");
                  print("data saved $saved");
                  print(_name.text);
                  print(WrestlerImagePath.value);
                }),
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
