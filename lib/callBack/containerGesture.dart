import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class containerGesture extends StatelessWidget {
  const containerGesture(
      {super.key, required this.name, required this.callbackFunction});
  final String name;
  final Function callbackFunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callbackFunction(name);
      },
      child: Container(
        child: Center(child: Text(name)),
        color: Colors.blue,
       margin: EdgeInsets.only(top: 20,left: 20,right: 20),
        height: 70,
      ),
    );
  }
}
