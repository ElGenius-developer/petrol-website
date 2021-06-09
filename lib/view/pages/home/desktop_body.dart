part of 'home.dart';

class DeskTopBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveBuilder(
        builder: (context, deviceInfo) => Container(
            height: deviceInfo.localHeight! * .2,
            child: Row(
                children: HomeHelper.aboutChildren(
              deviceInfo,
            ).map((widget) => Expanded(child: widget)).toList())),

      ),
    );
  }
}
