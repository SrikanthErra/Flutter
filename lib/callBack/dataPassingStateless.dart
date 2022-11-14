import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/Appconstants.dart';
import 'package:textfield/Routes/App_routes.dart';

class pass extends StatelessWidget {
   pass({super.key, required this.result});
   String result;
  @override
  Widget build(BuildContext context) {
    result = AppConstants.sendData;
    return Card(
      child: Text(result),
    );
  }
}
