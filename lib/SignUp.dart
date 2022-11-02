import 'package:first_flutter_project/Forgot_pwd.dart';
import 'package:first_flutter_project/Routes/App_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('SignUp Page'))),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
            child:TextButton(onPressed: () {
              //  Navigator.of(context)
              //           .push(MaterialPageRoute(builder: (context) => Forgot()));
               Navigator.pushNamed(context, AppRoutes.forgot_pwd);
            }, child: Text('forgot password')),
            )
            
          ],
        ),
      ),
    );
  }
}
