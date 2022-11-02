import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:textfield/API_integration/api_call.dart';
import 'package:textfield/LogIn.dart';
import 'package:textfield/LogInScreen.dart';
import 'package:textfield/Shared_pref/shared_main.dart';
import 'package:textfield/SignUp.dart';
import 'package:textfield/calbck.dart';
import 'package:textfield/listview.dart';
import 'package:textfield/profile.dart';
import 'package:textfield/sample_list.dart';

import 'App_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.LogInScreen: ((context) => LogInScreen()),
      AppRoutes.shared_pref: ((context) => shared_pref()),
      AppRoutes.LogIn: ((context) => LogIn()),
      AppRoutes.api_call: ((context) => api_call()),
      AppRoutes.SignUp: ((context) => SignUp()),
      AppRoutes.list_sample: ((context) => list_sample()),
      AppRoutes.listview: ((context) => listview()),
      AppRoutes.profile: ((context) => profile()),
      AppRoutes.calbck: ((context) => calbck(
            getvalues: (String nameVal, String idVal) {
              AppConstants.empName = nameVal;
              AppConstants.empId = idVal;
            },
          )),
    };
  }
}

class AppConstants {
  static String empName = "";
  static String empId = "";
}
