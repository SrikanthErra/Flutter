import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:textfield/Appconstants.dart';
import 'package:textfield/Wrestlers/AppInputTextfield.dart';

import 'list_logicClass.dart';

class addTextData extends StatelessWidget {
  addTextData({super.key});
  TextEditingController _Empname = new TextEditingController();

  TextEditingController _salary = new TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textStateProvider = Provider.of<textStateNotifier>(context);

    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Details'))),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AppInputTextfield(
                hintText: "enter name",
                nameController: _Empname,
                errorMessage: 'Please enter name',
                input_type: TextInputType.text,
              ),
              AppInputTextfield(
                hintText: "enter salary",
                nameController: _salary,
                errorMessage: 'Please enter salary',
                input_type: TextInputType.number,
              ),
              TextButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      final data = _Empname.text   +   _salary.text;
                      textStateProvider.addData(data);
                      Navigator.pop(context);
                    }
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
