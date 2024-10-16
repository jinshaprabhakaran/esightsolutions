import 'package:esightsolutions/modules/focus/view/focus_screen.view.dart';
import 'package:esightsolutions/modules/homescreen/view/home_screen.view.dart';

import 'package:esightsolutions/modules/landingscreen/view/landing_screen.view.dart';
import 'package:esightsolutions/modules/totalamount/view/totalamount_screen.view.dart';

import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {

    '/' : (BuildContext context) => const LandingScreen(),
    'home' : (BuildContext context) => const HomeScreen(),
    'focus': (BuildContext context) => const FocusScreen(),
    'total' : (BuildContext context) => const TotalAmountScreen(),
    };