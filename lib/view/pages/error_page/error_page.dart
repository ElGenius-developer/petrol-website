import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petrol_website/view/router/app_router.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
                child: Image(
                    height: MediaQuery.of(context).size.height * .3,
                    width: MediaQuery.of(context).size.width * .5,
                    image: AssetImage('assets/icons/sad.png'))),
            Text('Page Not Found'),
            CupertinoButton(
              child: Text("Go Home"),
              onPressed: () =>
                  NavigationServices.navigateWithReplacementTo(
                      HomeRoute),
            )
          ],
        ),
      ),
    );
  }
}
