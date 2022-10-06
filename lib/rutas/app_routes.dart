

import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

    static const initialRoute = 'home';

    static Map<String, Widget Function(BuildContext)> routes = {

      'listview1':(BuildContext context) => const listview1_screen(),
      'listview2':(BuildContext context) => const listview2_screen(),
      'alert':(BuildContext context) => const alert_screens(),
      'card':(BuildContext context) => const card_screens(),
      'home':(BuildContext context) => const Home_screen(),
    };

    static Route<dynamic> onGenerateRoute( RouteSettings settings){
      return MaterialPageRoute(
        builder: (context) => const alert_screens(),
      );
    }
}