part of 'generic_navigation_stack.dart';

class CustomNavigationObserver extends RouteObserver<PageRoute<dynamic>> {
  final NavigationStack<String> _navStack = NavigationStack<String>();
  NavigationStack<String> get navStack => _navStack;


  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {

     super.didPush(route, previousRoute);
     if(!navStack.fetchAll.contains(route.settings.name)){
     navStack.push(route.settings.name);
   }
    print("pushing ,,,new list : ${navStack.fetchAll}");
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if(navStack.fetchAll.isNotEmpty)
   {
     super.didPop(route, previousRoute);

     navStack.pop();
   }
    print("pop ,,,new list : ${navStack.fetchAll}");

  }
}
