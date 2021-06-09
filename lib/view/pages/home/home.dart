import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import 'package:petrol_website/view/widgets/custom_text/custom_text.dart';
import 'package:petrol_website/view/widgets/header_widet/desktop_header.dart';
import 'package:responsive_ui_builder/responsive_ui_builder.dart';
import 'package:dots_indicator/dots_indicator.dart';
part 'children.dart';
part 'desktop_body.dart';
part 'drawer_content.dart';
part 'body_contenet_mobile.dart';
part 'scroll_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static final scaffoldKey = GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ResponsiveBuilder(
        builder: (context, deviceInfo) {
           return Scaffold(
            drawer: DrawerContent(
              deviceInfo: deviceInfo,
            ),
            key: scaffoldKey,
            body: Scrollbar(
              interactive: true,
              showTrackOnHover: true,
              isAlwaysShown: true,
              child: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return [
                      SliverToBoxAdapter(
                        child: Container(
                          color: Colors.white,
                          height: deviceInfo.deviceType == DeviceType.Desktop
                              ? deviceInfo.localHeight! * .14
                              : deviceInfo.localHeight! * .1,
                          child: ResponsiveLayout(
                            desktop: DeskTopHeader(deviceInfo),
                            mobile: MobileTabletHeader(
                              deviceInfo: deviceInfo,
                            ),
                            tablet: MobileTabletHeader(
                              deviceInfo: deviceInfo,
                            ),
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          height: deviceInfo.localHeight! * .9,
                          width: deviceInfo.localWidth,
                          child: ScrollImages(
                            deviceInfo: deviceInfo,
                          ),
                        ),
                      ),
                    ];
                  },
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: deviceInfo.localHeight! * .08,
                        ),
                        CustomText(
                          isNormal: true,

                          text: 'About',
                          fontFamily: 'MicroTechnic',
                          fontSize: 35,
                          textColor: Colors.blue.shade700,
                        ),
                        Container(
                          child: ResponsiveLayout(
                            desktop: Container(
                              width: deviceInfo.localWidth! - 50,
                              height: deviceInfo.localHeight! * .6,
                              child: DeskTopBody(),
                            ),
                            mobile: Container(
                              height: deviceInfo.localHeight,
                              width: deviceInfo.localWidth,
                              child: BodyContentMobile(),
                            ),
                            tablet: Container(
                              height: deviceInfo.localHeight,
                              width: deviceInfo.localWidth,
                              child: BodyContentMobile(),
                            ),
                          ),
                        ),
                        Container(
                          // height: deviceInfo.localHeight! * .08,
                          margin: EdgeInsets.symmetric(vertical: deviceInfo.localHeight! * .09),

                          child: CustomText(
                            isNormal: true,

                            text: 'QHSE',
                            fontFamily: 'MicroTechnic',
                            fontSize: 35,
                            textColor: Colors.blue.shade700,
                          ),
                        ),

                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(
                              horizontal: deviceInfo.localWidth! * .04),
                          child: ResponsiveLayout(
                            tablet: Column(
                              children: HomeHelper.qhseChildren(deviceInfo),
                            ),
                            mobile: Column(
                                children:
                                    HomeHelper.qhseChildren(deviceInfo)),
                            desktop: Row(
                              children: HomeHelper.qhseChildren(deviceInfo),
                            ),
                          ),
                        ),


                        Container(
                           margin: EdgeInsets.symmetric(vertical: deviceInfo.localHeight! * .15),
                          child: CustomText(
                            isNormal: true,

                            text: 'Services',
                            fontFamily: 'MicroTechnic',
                            fontSize: 35,
                            textColor: Colors.blue.shade700,
                          ),
                        ),
                        Container(
                          height: deviceInfo.localHeight!*.5,
                          child: ListView(
                           scrollDirection: Axis.horizontal
                               ,
                          children: HomeHelper.serviceImageList.keys.map((text) =>
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Container(
                                      height: deviceInfo.deviceType ==DeviceType.Desktop?deviceInfo.localWidth!/4:
                                      deviceInfo.localHeight!*.4
                                      ,
                                      width: deviceInfo.deviceType ==DeviceType.Desktop? deviceInfo.localWidth!/4:deviceInfo.localWidth!/2,

                                      child: Image.asset(

                                        HomeHelper.serviceImageList[text]! ,
                                        fit: BoxFit.cover,),

                                    ),

                                    Container(
                                      height: deviceInfo.deviceType ==DeviceType.Desktop?deviceInfo.localWidth!/4:
                                      deviceInfo.localHeight!*.4,
                                      width: deviceInfo.deviceType ==DeviceType.Desktop? deviceInfo.localWidth!/4:deviceInfo.localWidth!/2,

                                      color: Colors.black54,
                                      child: Center(
                                        child: CustomText(
                                          isNormal: true,
                                          text: text,
                                          textColor: Colors.white,
                                          textAlign: TextAlign.center,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'cambria',
                                          fontSize: 20,
                                          maxLines: 21,
                                        ),
                                      ),

                                    )
                                  ],

                                ),
                              )
                          ).toList(),
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
