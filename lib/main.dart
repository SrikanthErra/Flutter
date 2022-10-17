import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Flutter first app"))),
        body: Center(
            child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blueGrey),
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.orange,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.white,
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      color: Colors.green,
                      width: 50,
                      height: 50,
                    )
                  ],
                )))),
  ));
}
