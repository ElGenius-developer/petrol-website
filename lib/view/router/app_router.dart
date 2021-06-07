import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petrol_website/main.dart';
import 'package:petrol_website/view/pages/details/details_page.dart';
import 'package:petrol_website/view/pages/home/Home.dart';
import 'package:petrol_website/view/pages/initial/initial_page.dart';

part 'arguments.dart';
part 'get_route.dart';
part 'navigation_services.dart';
part 'router_objects.dart';
part 'router_model.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    if(settings.name =='/')
      return getRoute(homeRoute);

     if(settings.name==homeRoute.route)
      return getRoute(homeRoute);

    else if(settings.name==detailsRoute.route)
      return getRoute(detailsRoute);
  }
}
