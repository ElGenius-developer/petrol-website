part of 'router_imports.dart';

class AppRoute {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    // Arguments? appArgs = ?routeSettings.arguments;
    print(routeSettings.arguments.runtimeType);

    switch (routeSettings.name) {
       case LoadingScreenRoute:
        return _getRouteName(LoadingScreen()); 
      case HomeRoute:
        return _getRouteName(HomePage()); 
            case SecondScreenRoute:
        return _getRouteName(SecondScreen());
      default:
        return null;
 
    }
  }
}

Route _getRouteName(Widget child) =>
    CupertinoPageRoute(builder: (context) => child);
