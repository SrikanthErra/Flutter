import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  final _formkey = GlobalKey<FormState>();

  bool _isPasswordvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sing Up Page')),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _name,
              decoration: InputDecoration(hintText: 'Enter name'),
              validator: (value) {
                if (value!.isEmpty) // final v=value ?? "";if(v.isEmmpty)
                {
                  return "Please enter name";
                }
              },
            ),
            TextFormField(
              controller: _password,
              obscureText: _isPasswordvisible,
              decoration: InputDecoration(
                  hintText: 'Enter password',
                  suffixIcon: GestureDetector(
                    onTap: () {
                      print('Click');
                      setState(() {
                        _isPasswordvisible = !_isPasswordvisible;
                      });
                    },
                    child: Icon(Icons.remove_red_eye_outlined),
                  )),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter password";
                }
              },
            ),
            TextButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {}
              },
              child: Text("LOG IN"),
            ),
          ],
        ),
      ),
    );
  }
}
