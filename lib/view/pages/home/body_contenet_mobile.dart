part of'home.dart';
class BodyContentMobile extends StatelessWidget {
  const BodyContentMobile({Key? key}) : super(key: key);
static final listImages= [
  'assets/images/co1.jpeg',
  'assets/images/co2.jpeg',
  'assets/images/co3.jpeg',
];
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder:(context, deviceInfo) => Container(
        child:  ResponsiveBuilder(
          builder:(context, deviceInfo) =>
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: HomeHelper.aboutChildren(   deviceInfo,
                      width: deviceInfo.localWidth,height: deviceInfo.localHeight!*.3).map((widget) =>
                  widget
                  ).toList(),
                ),
              ),
        ),
      )
    );
  }
}
