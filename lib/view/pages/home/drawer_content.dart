part of'home.dart';
class DrawerContent extends StatelessWidget {
 final DeviceInfo deviceInfo;
  const DrawerContent({Key? key,required this.deviceInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: HomeHelper.appBarAndDrawerChildren(deviceInfo),
        ),
      ),
    );
  }
}
