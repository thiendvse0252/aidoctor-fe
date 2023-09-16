import 'package:ai_doctor/modules/authenticate//LoginScreen.dart';
import 'package:ai_doctor/modules/authenticate//RegisterScreen.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings){
    switch(settings.name){
      case 'registerPage':
        {
          return MaterialPageRoute(builder: (_) => RegisterScreen());
        }
      case 'loginPage':
        {
          return MaterialPageRoute(builder: (_) => LoginScreen());
        }

      default:
        {
          return MaterialPageRoute(
              builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}')),
                ));
        }
    }
  }
}