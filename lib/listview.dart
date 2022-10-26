import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfield/App_pages.dart';
import 'package:textfield/App_routes.dart';

import 'calbck.dart';

class listview extends StatefulWidget {
  @override
  _listviewState createState() => _listviewState();
}

class _listviewState extends State<listview> {
  final List<String> emp_list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Employee list')),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: emp_list.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.car_crash),
                title: Text(emp_list[index]),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (() {
            /* Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => calbck(getvalues: ((nameVal, idVal) {
                      final String result = '$nameVal   $idVal';
                      setState(() {
                        emp_list.add(result);
                      });
                    }))));*/
            Navigator.pushNamed(context, AppRoutes.calbck);
            
            
                final String name = AppConstants.empName;
                final String id=AppConstants.empId;
                final String result= '$name   $id';
                setState(() {
                  emp_list.add(result);
                });
          }),
          
          child: Icon(Icons.add),
    ));
  }
}
