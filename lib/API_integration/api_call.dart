import 'dart:html';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class api_call extends StatefulWidget {
  const api_call({super.key});

  @override
  State<api_call> createState() => _api_callState();
}

class _api_callState extends State<api_call> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _Id = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('API Integration'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              controller: _name,
              decoration: InputDecoration(
                hintText: "Enter villagename",
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextFormField(
              controller: _Id,
              decoration: InputDecoration(
                hintText: "Enter villageId",
                hintStyle: TextStyle(fontStyle: FontStyle.italic),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: TextButton(
                  onPressed: () {
                    requestLogin(context);
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  )),
              decoration: BoxDecoration(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }

  requestLogin(BuildContext context) async {
//step1: create request url with base url and endpoint
//https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/getGrievanceStatusCitizen
    final requestUrl = "https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/" +
        "getGrievanceStatusCitizen";
    // "http://uat7.cgg.gov.in/gccfms/webservice/VersionsInfo/"+"getVersionsInfo";
    print(requestUrl);
//step2:create payload if request POST,PUT, and other except GET
    final requestPayload = {
      "userid": "cgg@ghmc",
      "password": "ghmc@cgg@2018",
      "MobileNo": "9985074116",
      "CompId": "111022556764"
    };
    print(requestPayload);
// step3: create headers,parameters and authourization,if in case present
    final headers= {
  "Access-Control-Allow-Origin": "*", // Required for CORS support to work
  "Access-Control-Allow-Credentials": true, // Required for cookies, authorization headers with HTTPS
  "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
  "Access-Control-Allow-Methods": "POST, OPTIONS"
};
// step4:dio or http, use one of it to connect server
    final _dioObject = Dio();
    {
      try {
        final _response =
            await _dioObject.post(requestUrl, data: requestPayload);
        print(_response);
      } on DioError catch (e) {
        print(e.response?.statusCode);
        print('Exception = ' + e.toString());
      throw Exception(e);
      }
    }
  }
}
  /*requestLogin(BuildContext context) async {
//step1: create request url with base url and endpoint
    final requestUrl = "https://uat9.cgg.gov.in/tsoilfed/serviceCalls/getBoreWellPipeSizes";
//step 2: create payload if request post ,put,opton
    final requestPayload = {
      "name": _name.text,
      "password": _password.text
    };
// step 3: create headders and autherazation
// step 4: dio or http use this package connect to server
    final _dioObject = Dio();
    try {
      final _response = await _dioObject.post(requestUrl, data: requestPayload);
      print(_response);
    } on DioError catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 500) {
        final errorMessage = e.response?.data["message"];
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(errorMessage),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("ok"))
              ],
            );
          },
        );
      }
      print("error is $e");
      print("status code is ${e.response?.statusCode}");
    }
// step 5: print the response
  }
*/

