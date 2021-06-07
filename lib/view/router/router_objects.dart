part of 'app_router.dart';

  RoutersModel initialRoute = RoutersModel(
    page: InitialPage(),
    route: '/');

  RoutersModel homeRoute = RoutersModel(
    page: Home(),
    route: '/home');
  RoutersModel detailsRoute = RoutersModel(
    page: DetailsPage(),
    route: '/details');
