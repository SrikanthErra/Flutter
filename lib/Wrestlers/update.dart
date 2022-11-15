// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sqflite/sqflite.dart';
import 'package:textfield/Wrestlers/wrestler_model.dart';

import 'AppInputTextfield.dart';
import 'database_helper.dart';

class update extends StatefulWidget {
  const update({super.key});

  @override
  State<update> createState() => _updateState();
}

class _updateState extends State<update> {
  TextEditingController _updateName = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Column(
        children: [
          Text('Update name'),
        ],
      )),
      body: Center(
        child: Column(
          children: [
            AppInputTextfield(
                hintText: 'enter name to update',
                nameController: _updateName,
                errorMessage: 'Please enter name',
                input_type: TextInputType.text),
            TextButton(
                onPressed: () async {
                  
                  wrestler_model wrestlerModel = new wrestler_model();
                  final String? result = wrestlerModel.name;
                  print(result);
                  

                  Navigator.pop(context);
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
