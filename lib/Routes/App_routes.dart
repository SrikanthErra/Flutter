
import 'package:textfield/API_integration/api_call.dart';
import 'package:textfield/API_integration/grievance.dart';
import 'package:textfield/LogIn.dart';
import 'package:textfield/LogInScreen.dart';
import 'package:textfield/Shared_pref/shared_main.dart';
import 'package:textfield/SignUp.dart';
import 'package:textfield/calbck.dart';
import 'package:textfield/listview.dart';
import 'package:textfield/provider/list_main.dart';
import 'package:textfield/sample_list.dart';
import 'package:textfield/profile.dart';
class AppRoutes {
  AppRoutes._();
  static const initial = wrestlers_info;
  static const LogInScreen = "/loginscreen";
  static const LogIn = "/login";
  static const passdata = "/passdata";
  static const SignUp = "/signup";
  static const list_sample = "/sample_list";
  static const list_provider = "/list_provider ";
  static const listview="/listview";
  static const calbck="/calbck";
  static const containerCalbck="/containerCalbck";
  static const profile = "/profile";
  static const shared_pref = "/shared_pref";
  static const api_call = "/api_call";
  static const grievence = "/grievence";
  static const wrestlers_info = "/wrestlers_info";
  static const CounterProviderView = "/CounterProviderView"; 
  static const addTextData = "/addTextData"; 
  static const wrestler_list = "/wrestler_list"; 

}
