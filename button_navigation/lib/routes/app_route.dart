import 'package:button_navigation/view/dashboard_view.dart';
import 'package:button_navigation/view/splash_view.dart';

class AppRoute {
  AppRoute._();

  static const String splashRoute = '/';
  static const String dashboardRoute = '/dashboard';

  static getAppRoutes() {
    return {
      splashRoute: (context) => const SplashView(),
      dashboardRoute: (context) => const DashboardView(),
    };
  }
}
