import 'package:flutter/material.dart';
import 'package:petrol_website/view/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:petrol_website/view/widgets/custom_text/custom_text.dart';
import 'package:responsive_ui_builder/responsive_ui_builder.dart';

class LayoutTemplate extends StatefulWidget {
  final Widget child;
  LayoutTemplate(this.child);

  @override
  _LayoutTemplateState createState() => _LayoutTemplateState();
}

class _LayoutTemplateState extends State<LayoutTemplate> {
  var services = '', qhse = '', hr = '', carrers = '';
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, deviceInfo) {
      print('inital');
      return Scaffold(
        body: Column(
          children: [
            Container(
              height: deviceInfo.localHeight! * 0.1,
              width: deviceInfo.localWidth,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: CustomText(
                        isNormal: false,
                        text: 'Home',
                        textColor: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: widget.child),
          ],
        ),
      );
    });
  }
}
