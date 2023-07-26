import 'package:flutter/material.dart';
import 'package:jimpact/authentications/auth_screen.dart';
import 'package:jimpact/authentications/login.dart';
import 'package:jimpact/authentications/register.dart';
import 'package:jimpact/home/screens/account_setup.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthScreen(),
      );
    case AuthRegister.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthRegister(),
      );
    case AuthLogin.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthLogin(),
      );
    case AccountSetUp.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AccountSetUp(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("The Screen does not exsit"),
          ),
        ),
      );
  }
}
