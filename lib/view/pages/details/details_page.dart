import 'package:flutter/material.dart';
import 'package:petrol_website/view/widgets/custom_text/custom_text.dart';
import 'package:responsive_ui_builder/responsive_ui_builder.dart';
class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ResponsiveBuilder(
        builder: (context, deviceInfo) => Center(
          child: TextButton(
            child: CustomText(
              isNormal: true,
              text: 'This is details ',
              textColor: Colors.red,),
            onPressed: () {
             },
          ),
        ),
      ),
    );
  }
}
