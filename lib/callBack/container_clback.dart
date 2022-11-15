import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/Routes/App_routes.dart';
import 'package:textfield/Wrestlers/AppInputTextfield.dart';
import 'package:textfield/callBack/containerGesture.dart';
import 'package:textfield/callBack/pass_model.dart';

class containerCallback extends StatefulWidget {
  const containerCallback({super.key});

  @override
  State<containerCallback> createState() => _containerCallbackState();
}

class _containerCallbackState extends State<containerCallback> {
  String add = "World";
  callbck(str) {
    setState(() {
      add = str;
    });
  }

  TextEditingController _stateless = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Container')),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  child: Center(child: Text('Hello  $add')),
                  color: Colors.blue,
                  height: 70,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                ),
              ),
              containerGesture(name: 'Srikanth', callbackFunction: callbck),
              containerGesture(name: 'Teju', callbackFunction: callbck),
              AppInputTextfield(
                  hintText: 'enter name',
                  nameController: _stateless,
                  errorMessage: 'please enter name',
                  input_type: TextInputType.text),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.passdata,
                        arguments: ScreenArguments(_stateless.text));
                  },
                  child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
