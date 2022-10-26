import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class calbck extends StatelessWidget {
  calbck({super.key, required this.getvalues});
  final Function(String nameVal, String idVal) getvalues;

  TextEditingController _name = new TextEditingController();
  TextEditingController _id = new TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Employee details')),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _name,
                decoration: InputDecoration(hintText: 'Enter Employee name'),
                validator: (value) {
                  if (value!.isEmpty) // final v=value ?? "";if(v.isEmmpty)
                  {
                    return "Please enter Employee name";
                  }
                },
              ),
              TextFormField(
                controller: _id,
                decoration: InputDecoration(
                  hintText: 'Enter Employee Id',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter Employee Id";
                  }
                },
              ),
              TextButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    getvalues(_name.text, _id.text);
                   // print(_name.text);
                    Navigator.pop(context);
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
