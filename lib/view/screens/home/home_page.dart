import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petrol_website/logic/cubits/route_cubit/route_cubit.dart';
import 'package:petrol_website/view/router/route_names.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          try {
            context.read<RouteCubit>().navigateTo(SecondScreenRoute);
            // Navigator.pushNamed(context, SecondScreenRoute);
          } catch (error, stackTrace) {
            print('$error  occurs in  ==> $stackTrace');
          }
        },
      ),
      body: Center(
        child: ResponsiveLayout(
          desktop: Text("desktop".toUpperCase()),
          mobile: Text("mobile".toUpperCase()),
          tablet: Text("tablet".toUpperCase()),
        ),
      ),
    );
  }
}
