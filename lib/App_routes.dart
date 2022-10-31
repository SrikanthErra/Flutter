
import 'package:textfield/LogIn.dart';
import 'package:textfield/LogInScreen.dart';
import 'package:textfield/SignUp.dart';
import 'package:textfield/calbck.dart';
import 'package:textfield/listview.dart';
import 'package:textfield/sample_list.dart';
import 'package:textfield/profile.dart';
class AppRoutes {
  AppRoutes._();
  static const initial = profile;
  static const LogInScreen = "/loginscreen";
  static const LogIn = "/login";
  static const SignUp = "/signup";
  static const list_sample = "/sample_list";
  static const listview="/listview";
  static const calbck="/calbck";
  static const profile = "/profile";
}