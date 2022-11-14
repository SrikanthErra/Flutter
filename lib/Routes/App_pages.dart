import 'package:flutter/cupertino.dart';
import 'package:textfield/API_integration/api_call.dart';
import 'package:textfield/API_integration/grievance.dart';
import 'package:textfield/LogIn.dart';
import 'package:textfield/LogInScreen.dart';
import 'package:textfield/Shared_pref/shared_main.dart';
import 'package:textfield/SignUp.dart';
import 'package:textfield/Wrestlers/wrestler_list.dart';
import 'package:textfield/calbck.dart';
import 'package:textfield/callBack/container_clback.dart';
import 'package:textfield/callBack/dataPassingStateless.dart';
import 'package:textfield/listview.dart';
import 'package:textfield/profile.dart';
import 'package:textfield/sample_list.dart';

import '../Appconstants.dart';
import '../Wrestlers/wrestlers_info.dart';
import '../Wrestlers/wrestler_list.dart';
import '../provider/add_txt_toList.dart';
import '../provider/list_main.dart';
import '../provider/provider_counterMain.dart';
import 'App_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.LogInScreen: ((context) => LogInScreen()),
      AppRoutes.shared_pref: ((context) => shared_pref()),
      AppRoutes.LogIn: ((context) => LogIn()),
      AppRoutes.api_call: ((context) => api_call()),
      AppRoutes.grievence: ((context) => grievence()),
      AppRoutes.SignUp: ((context) => SignUp()),
      AppRoutes.list_sample: ((context) => list_sample()),
      AppRoutes.list_provider: ((context) => list_provider()),
      AppRoutes.listview: ((context) => listview()),
      AppRoutes.profile: ((context) => profile()),
      AppRoutes.passdata: ((context) => pass(result: '',)),
      AppRoutes.wrestlers_info: ((context) => wrestlers_info()),
      AppRoutes.wrestler_list:((context) => wrestler_list()),
      AppRoutes.containerCalbck:((context) => containerCallback()),
      AppRoutes.CounterProviderView: ((context) => CounterProviderView()),
      AppRoutes.addTextData: ((context) => addTextData()),
      AppRoutes.calbck: ((context) => calbck(
            getvalues: (String nameVal, String idVal) {
              AppConstants.empName = nameVal;
              AppConstants.empId = idVal;
            },
          )),
    };
  }
}
