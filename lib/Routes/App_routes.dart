
import 'package:textfield/API_integration/api_call.dart';
import 'package:textfield/API_integration/grievance.dart';
import 'package:textfield/LogIn.dart';
import 'package:textfield/LogInScreen.dart';
import 'package:textfield/Shared_pref/shared_main.dart';
import 'package:textfield/SignUp.dart';
import 'package:textfield/calbck.dart';
import 'package:textfield/listview.dart';
import 'package:textfield/sample_list.dart';
import 'package:textfield/profile.dart';
class AppRoutes {
  AppRoutes._();
  static const initial = wrestlers_info;
  static const LogInScreen = "/loginscreen";
  static const LogIn = "/login";
  static const SignUp = "/signup";
  static const list_sample = "/sample_list";
  static const listview="/listview";
  static const calbck="/calbck";
  static const profile = "/profile";
  static const shared_pref = "/shared_pref";
   static const api_call = "/api_call";
   static const grievence = "/grievence";
   static const wrestlers_info = "/wrestlers_info";
}
