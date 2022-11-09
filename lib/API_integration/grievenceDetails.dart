import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfield/API_integration/grievanceModel.dart';

class grievanceDetails extends StatelessWidget {
  const grievanceDetails({super.key, required this.details});
  final Grievance? details;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("user_name:  ${details?.userName ?? 0}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("status:  ${details?.status ?? ""}"),
          ),
          // Text("VillageId:  ${details?.villageId ?? 0}"),
          // Text("VillageId:  ${details?.villageId ?? 0}"),
        ],
      ),
    );
  }
}
