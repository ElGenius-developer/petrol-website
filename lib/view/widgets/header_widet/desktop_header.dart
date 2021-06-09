import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:petrol_website/view/pages/home/home.dart';
import 'package:petrol_website/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:petrol_website/view/widgets/custom_text/custom_text.dart';
import 'package:responsive_ui_builder/responsive_ui_builder.dart';
part 'mobile_tablet_header.dart';

class DeskTopHeader extends StatelessWidget {
  final DeviceInfo deviceInfo;
  DeskTopHeader(this.deviceInfo);
  @override
  Widget build(BuildContext context) {
    print(deviceInfo.screenWidth);
    return Container(
      width: deviceInfo.screenWidth,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          flex: 15,
          child: GestureDetector(
            child: CustomText(

              text: 'ISPetroleum',
              isNormal: true,
              padding: EdgeInsets.symmetric(horizontal:20 ),
              textColor: Colors.red.shade500,
              fontWeight: FontWeight.bold,
              fontSize: deviceInfo.deviceType==DeviceType.Desktop?
              (deviceInfo.screenWidth!<=996? deviceInfo.localWidth!/31:
              deviceInfo.localWidth!/40
              ):
              32,
              maxFontSize: 55,
              fontFamily: 'MicroTechnic',
            ),
          ),
        ),
        Expanded(
          flex: 14,
          child: Row(children: HomeHelper.appBarAndDrawerChildren(deviceInfo)),
        ),
      ]),
    );
  }
}
