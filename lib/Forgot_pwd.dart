import 'package:first_flutter_project/Routes/App_routes.dart';
import 'package:first_flutter_project/getStart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  TextEditingController _pwd = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Forgot Password page')),
        body: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _pwd,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                hintText: 'Enter new Password',
              ),
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName(AppRoutes.getstart));
                  //Navigator.pop(context);
                },
                child: Text('Goto_GetStartScreen'))
          ],
        )));
  }
}
  