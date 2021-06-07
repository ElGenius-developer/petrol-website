part of 'app_router.dart';

class NavigationServices {
  static GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  //Push named route
  static Future<dynamic> navigateTo(String routeName, {Arguments? arguments}) =>
      navigationKey.currentState!.pushNamed(routeName, arguments: arguments);

  //Push to new route and remove the current one from stack .
  static Future<dynamic> navigateWithReplacementTo(String routeName,
          {Arguments? arguments}) =>
      navigationKey.currentState!
          .pushReplacementNamed(routeName, arguments: arguments);

  //push to new screen and remove all the previous screens
  static Future<dynamic> navigateToWithReplacementRemovedUntil(String routeName,
          {Arguments? arguments}) =>
      navigationKey.currentState!.pushNamedAndRemoveUntil(
          routeName, (route) => false,
          arguments: arguments);

  //navigate back to the previous screen ..
  static void back([dynamic data]) => navigationKey.currentState!.pop(data);
}
