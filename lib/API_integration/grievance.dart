import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/API_integration/grievanceModel.dart';
import 'package:textfield/API_integration/grievanceModel.dart';

import 'grievanceModel.dart';
import 'grievanceModel.dart';
import 'grievanceModel.dart';
import 'grievanceModel.dart';
import 'grievenceDetails.dart';

class grievence extends StatefulWidget {
  const grievence({super.key});

  @override
  State<grievence> createState() => _grievenceState();
}

class _grievenceState extends State<grievence> {
   grievanceModel? _grievanceModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Response from Api')),
      body: Container(
          child: ListView.builder(
        itemCount: _grievanceModel?.grievance?.length ?? 0,
        itemBuilder: (context, index) {
          final grievanceData = _grievanceModel?.grievance?[index];
          return grievanceDetails(details: grievanceData);
        },
      )),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDetails();
  }

  fetchDetails() async {
    final requestUrl = "https://19cghmc.cgg.gov.in/myghmcwebapi/Grievance/" +
        "getGrievanceStatusCitizen";
//step 2: create payload if request post ,put,option
    final requestPayload = {
       "userid": "cgg@ghmc",
        "password": "ghmc@cgg@2018",
        "MobileNo": "9985074116",
        "CompId": "111022556764"
      };

// step 3: create headders and autherazation

// step 4: dio or http use this package connect to server
    final _dioObject = Dio();

    try {
      final _response = await _dioObject.post(requestUrl, data: requestPayload);
      //convet this response from json to modelclass
      final grievanceDetailsModel = grievanceModel.fromJson(_response.data);
      setState(() {
        _grievanceModel = grievanceDetailsModel;
      });
      print(_response);
    } on DioError catch (e) {
      if (e.response?.statusCode == 400 || e.response?.statusCode == 500) {
        final errorMessage = e.response?.data["message"];
        // showAlert(errorMessage);
      }
      print("error is $e");

      print("status code is ${e.response?.statusCode}");
    }
// step 5: print the response
  }
}
