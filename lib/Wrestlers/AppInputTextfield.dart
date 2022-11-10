import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppInputTextfield extends StatelessWidget {
  const AppInputTextfield(
      {super.key, required this.hintText, required this.nameController});
  final String hintText;
  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: (TextFormField(
        controller: nameController,
        decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(Icons.people),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)))),
      )),
    );
  }
}
