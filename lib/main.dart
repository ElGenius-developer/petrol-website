import 'package:flutter/material.dart';
import 'package:petrol_website/view/pages/error_page/error_page.dart';
import 'package:petrol_website/view/router/app_router.dart';
import 'package:petrol_website/view/router/navigation_history/generic_navigation_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Petrol Website',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      navigatorObservers: [CustomNavigationObserver()],
      navigatorKey: NavigationServices.navigationKey,
      onGenerateRoute: AppRouter.onGenerateRoute,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => ErrorPage(),
      ),
      initialRoute: HomeRoute,
      // builder: (context, child) => LayoutTemplate(child!),

      // navigatorObservers,
    );
  }
}
