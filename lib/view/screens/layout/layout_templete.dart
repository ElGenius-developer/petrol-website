import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplete extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final Widget child;
  LayoutTemplete(this.child);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, deviceInfo) => Scaffold(
        key: scaffoldKey,
     
        drawer: deviceInfo.deviceType == DeviceType.Mobile
            ? Drawer(
                child: Center(
                  child: Text(
                    "dasd",
                  ),
                ),
              )
            : null,
        body: Center(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false,
                title: Text(
                  "appbar",
                ),
                leading: deviceInfo.deviceType==DeviceType.Mobile? IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },
                ):null,
              ),
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
