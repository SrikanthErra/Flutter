import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  dynamic profileResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Profile'))),
      body: Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: CircleAvatar(
                radius: 48,
                backgroundImage: NetworkImage(profileResult["photo2"]),
                backgroundColor: Colors.transparent,
              ),
            )),
            row_component('Name', profileResult["user_name"]),
            row_component('Mobile number', profileResult["mobileno"])
          ])),
    );
  }

  Row row_component(String topic, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            topic,
            style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Text(value, style: TextStyle(color: Colors.blue, fontSize: 20)),
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    fetchProfileData();
  }

  fetchProfileData() async {
    String data = await rootBundle.loadString('assets/profile.json');

    setState(() {
      profileResult = json.decode(data);
      print("photo is $profileResult['photo2']");
    });
  }
}
