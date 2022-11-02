import 'package:first_flutter_project/LogIn.dart';
import 'package:first_flutter_project/Routes/App_routes.dart';
import 'package:first_flutter_project/SignUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class getStart extends StatefulWidget {
  @override
  State<getStart> createState() => _getStartState();
}

class _getStartState extends State<getStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('GetStart'))),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: TextButton(
                  onPressed: () {
                    //Navigator.of(context)
                    // .push(MaterialPageRoute(builder: (context) => LogIn()));
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                  child: Center(child: Text('LogIn'))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              child: TextButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //.push(MaterialPageRoute(builder: (context) => SignUp()));
                    Navigator.pushNamed(context, AppRoutes.signup);
                  },
                  child: Center(child: Text('SignUP'))),
            )
          ],
        ));
  }
}
