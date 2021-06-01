import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:petrol_website/view/router/arguments.dart';
part 'router_state.dart';

class RouteCubit extends Cubit<RouterState> {
  final GlobalKey<NavigatorState> navigatorKey= GlobalKey<NavigatorState>();

  RouteCubit() : super(InitialState());

  
    Future<dynamic> navigateTo(
    String routeName,{Arguments? arguments}
  ) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments
    );
    // emit()
  }

  Future<dynamic> navigateReplacementTo(String routeName,
      {Arguments? arguments}) {
    return navigatorKey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> navigateReplacementUntilTo(String routeName,
      {Arguments? arguments}) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
