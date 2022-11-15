// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/Routes/App_routes.dart';
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
  TextEditingController _age = new TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Wrestlers Information'))),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              wrestler_image(),
              AppInputTextfield(
                hintText: 'Enter Wrestler name',
                nameController: _name,
                errorMessage: 'Please enter wrestler name',
                input_type: TextInputType.text,
              ),
              AppInputTextfield(
                  hintText: 'enter age',
                  nameController: _age,
                  errorMessage: 'please enter age',
                  input_type: TextInputType.number),
              TextButton(
                  onPressed: (() async {
                    if (_formkey.currentState!.validate()) {
                      print(Uuid().v1());
                      final wrestlerData = wrestler_model(
                          userId: Uuid().v1(),
                          image: WrestlerImagePath.value?.path ?? "",
                          name: _name.text,
                          age: _age.text);
                      final DatabaseHelper _databaseService =
                          DatabaseHelper.instance;
                      final saved = await _databaseService.insertInto(
                          wrestlerData.toJson(), "Wrestlers");
                      print("data saved $saved");
                      print(_name.text);
                      print(WrestlerImagePath.value);
                      print(_age.text);

                      _name.text = '';
                      _age.text = '';
                    }
                  }),
                  child: Text('Submit')),
                 TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.wrestler_list);
                  },
                  child: Text('Retrieve Data')),
            ]
          ),
        ),
      ),
    );
  }
}
