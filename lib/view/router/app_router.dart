import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petrol_website/view/pages/details/details_page.dart';
import 'package:petrol_website/view/pages/home/home.dart';
import 'package:petrol_website/view/pages/initial/initial_page.dart';

part 'arguments.dart';
part 'get_route.dart';
part 'navigation_services.dart';
part 'router_objects.dart';
part 'router_model.dart';

class AppRouter {

  static Route? onGenerateRoute(RouteSettings settings) {
// final Arguments arg = Arguments(settings.arguments);
  print(settings.arguments.runtimeType);
    switch(settings.name){
     // case InitialRoute:return getRoute(LayoutTemplate(Arguments.child!),'initial');

      case HomeRoute:return getRoute(HomePage(),HomeRoute);
     case DetailsRoute:return getRoute(DetailsPage(),DetailsRoute);

   }
  }
}
