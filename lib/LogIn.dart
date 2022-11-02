import 'package:first_flutter_project/Routes/App_routes.dart';
import 'package:first_flutter_project/SignUp.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _signup = new TextEditingController();
  TextEditingController _back = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('LogIn Page'))),
      body: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: TextField(
                controller: _name,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    hintText: 'Enter name',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))))),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: TextField(
                controller: _password,
                obscureText: true,
                maxLength: 10,
                keyboardType: TextInputType.number,
                cursorColor: Colors.red,
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))))),
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Center(
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) => SignUp()));
                        Navigator.pushNamed(context, AppRoutes.signup);
                      },
                      child: Text('SignUp'),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back')),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}
