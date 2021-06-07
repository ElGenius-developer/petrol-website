import 'package:flutter/material.dart';
import 'package:petrol_website/view/router/app_router.dart';

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
      onGenerateRoute: AppRouter.onGenerateRoute,
      // initialRoute: initialRoute.route,
      navigatorKey: NavigationServices.navigationKey,
      navigatorObservers: [],
      // navigatorObservers,
     );
  }
}
