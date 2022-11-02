import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfield/Routes/App_routes.dart';
import 'package:textfield/listview.dart';

import 'Routes/App_pages.dart';
import 'LogIn.dart';
import 'LogInScreen.dart';
import 'SignUp.dart';
import 'listview.dart';
import 'sample_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LogIn Page',
      //home: LogInScreen(),
      // home: LogIn(),
      // home: SignUp(),
      // home: list_sample(),
      //home: listview(),
      initialRoute: AppRoutes.initial,
       routes: AppPages.routes,
    );
  }
}
