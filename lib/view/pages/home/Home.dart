import 'package:flutter/material.dart';
import 'package:petrol_website/view/router/app_router.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all( 12.0),
          child: Text('Home',style: TextStyle(
            color: Colors.amber,
          fontSize: MediaQuery.of(context).size.aspectRatio*30
          ),),
        ),
        leadingWidth:  MediaQuery.of(context).size.aspectRatio*200,
        toolbarHeight: MediaQuery.of(context).size.aspectRatio*65,
      ),
      body: Center(
        child: TextButton(
          child: Text('Go to Details'),
          onPressed: () {
            NavigationServices.navigateTo(detailsRoute.route!);
          },
        ),
      ),
    );
  }
}
