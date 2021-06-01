import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petrol_website/logic/cubits/route_cubit/route_cubit.dart';
import 'package:petrol_website/view/router/route_names.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  int _counter = 4;
  Timer? _timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: time(),
          builder: (context, snapshot) {
            return Center(
                child: CircularProgressIndicator(
                    color: Color.fromRGBO(Random().nextInt(255),
                        Random().nextInt(255), Random().nextInt(255), .8)));
          }),
    );
  }

  Future<int> time() async {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter == 0) {
        timer.cancel();
        _timer!.cancel();
        print('iam here');
        context.read<RouteCubit>().navigateTo(HomeRoute);
       } else {
        _counter--;
      
      }
    });
    return _counter;
  }

  @override
  void dispose() {
    super.dispose();
  }
}
