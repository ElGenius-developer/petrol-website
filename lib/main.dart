import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petrol_website/logic/cubits/route_cubit/route_cubit.dart';
import 'package:petrol_website/view/router/route_names.dart';
import 'package:petrol_website/view/screens/layout/layout_templete.dart';

import 'view/router/router_imports.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<RouteCubit>(create: (context) => RouteCubit(),)
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertrol',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, child) {
        return LayoutTemplete(child!);
      },
      onGenerateRoute:  AppRoute.onGenerateRoute,
       
       navigatorKey:context.watch<RouteCubit>().navigatorKey ,
    );
  }
}
