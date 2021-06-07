import 'package:flutter/material.dart';
import 'package:petrol_website/view/pages/home/Home.dart';

class InitialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 2)),
        builder: (context, snapshot) {
          print(snapshot.connectionState);
          if(snapshot.connectionState==ConnectionState.done) {
            return Home();
          }
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
    );
  }
}
