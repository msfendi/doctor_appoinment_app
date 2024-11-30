import 'package:doctor_appoinment_app/presentation/appoinment_screen/appoinment_screen.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../registration_appoinment_screen/registration_appoinment_page.dart';
import 'home_initial_page.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.homeInitialPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) => getCurrentPage(routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      }),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeInitialPage;
      case BottomBarEnum.Message:
        return AppRoutes.appoinmentRoute;
      case BottomBarEnum.Calendargray500:
        return AppRoutes.registrationAppoinmentPage;
      case BottomBarEnum.Lockgray500:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeInitialPage:
        return HomeInitialPage();
      case AppRoutes.appoinmentRoute:
        return AppoinmentScreen();
      case AppRoutes.registrationAppoinmentPage:
        return RegistrationAppoinmentPage();
      case AppRoutes.profilePage:
      // return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
