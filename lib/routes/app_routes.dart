import 'package:doctor_appoinment_app/presentation/appoinment_screen/appoinment_screen.dart';
import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/home_screen/home_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String homeScreen = '/home_screen';

  static const String appoinmentRoute = '/appoinment_page';

  static const String registrationAppoinmentPage = '/appoinment_screen';

  static const String homeInitialPage = '/home_initial_page';

  static const String schedulePage = '/schedule_page';

  static const String scheduleupcominTabPage = '/scheduleupcomin_tab_page';

  static const String messageHistoryPage = '/message_history_page';

  static const String messageTabPage = '/message_tab_page';

  static const String profilePage = '/profile_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    homeScreen: (context) => HomeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => HomeScreen(),
    appoinmentRoute: (context) => AppoinmentScreen(),
    registrationAppoinmentPage: (context) => AppoinmentScreen(),
  };
}
