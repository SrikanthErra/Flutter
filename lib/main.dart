import 'package:first_flutter_project/Forgot_pwd.dart';
import 'package:first_flutter_project/LogIn.dart';
import 'package:first_flutter_project/Routes/App_pages.dart';
import 'package:first_flutter_project/Routes/App_routes.dart';
import 'package:first_flutter_project/SignUp.dart';
import 'package:flutter/material.dart';

import 'getStart.dart';
import 'LogIn.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
   // home: getStart(),
    //home: LogIn(),
     // Scaffold(appBar: AppBar(title: Center(child: Text('My First Flutter App')),)),
     initialRoute: AppRoutes.getstart,
       routes: AppPages.routes,
    /* routes: {
      "/getstart": ((context) => getStart()),
      "/login": ((context) => LogIn()),
      "/signup": ((context) => SignUp()),
      "/forgot": ((context) => Forgot()),
     },*/
    );
  }
}


 