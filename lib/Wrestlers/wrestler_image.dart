import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:textfield/Wrestlers/notifier_list.dart';

class wrestler_image extends StatelessWidget {
  const wrestler_image({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final imageFile =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        WrestlerImagePath.value = imageFile;
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ValueListenableBuilder(
            valueListenable: WrestlerImagePath,
            builder: (context, value, child) {
              return value == null
                  ? Image.asset("assets/istock.jpg", width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2)
                  : Image.file(File(value.path),
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2);
            },
          ),
        ),
      ),
    );
  }
}
