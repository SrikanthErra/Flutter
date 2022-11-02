import 'package:first_flutter_project/Forgot_pwd.dart';
import 'package:first_flutter_project/LogIn.dart';
import 'package:first_flutter_project/Routes/App_routes.dart';
import 'package:first_flutter_project/SignUp.dart';
import 'package:first_flutter_project/getStart.dart';
import 'package:flutter/cupertino.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.getstart: ((context) => getStart()),
      AppRoutes.login: ((context) => LogIn()),
      AppRoutes.signup: ((context) => SignUp()),
      AppRoutes.forgot_pwd: ((context) => Forgot()),
    };
  }
}
