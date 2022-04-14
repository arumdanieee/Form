import 'package:flutter/material.dart';
import 'signin.dart';
import 'signup.dart';
import 'home.dart';
import 'check.dart';
import 'pass.dart';
import 'forgot.dart';
import 'reset.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SignIn());
      case '/signup':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/check':
        return MaterialPageRoute(builder: (_) => Check());
      case '/pass':
        return MaterialPageRoute(builder: (_) => Pass());
      case '/forgot':
        return MaterialPageRoute(builder: (_) => ForgotPassword());
      case '/reset':
        return MaterialPageRoute(builder: (_) => ResetPassword());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
