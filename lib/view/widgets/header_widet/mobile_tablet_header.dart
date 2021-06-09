part of 'desktop_header.dart';

class MobileTabletHeader extends StatelessWidget {
  final DeviceInfo deviceInfo;
  const MobileTabletHeader({Key? key, required this.deviceInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceInfo.localHeight!*.1,
      child: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,elevation: 0,
        title:Row(
          children: [

            Visibility(
              visible: deviceInfo.deviceType!=DeviceType.Desktop,
              child: Expanded(
              flex: 1,
                child: IconButton(
                  onPressed: () {
                  HomePage.scaffoldKey.currentState!.openDrawer(); },
                  icon: Icon(Icons.list,color: Colors.black,),
                ),
              ),
            ),
            Expanded(
             flex: 7,
              child: Center(
                child: GestureDetector(
                  child: CustomText(
                    text: 'ISPetroleum',
                    isNormal: true,

                    padding: EdgeInsets.symmetric(horizontal: 25),
                    textColor: Colors.red.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    maxFontSize: 25,
                    fontFamily: 'MicroTechnic',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: deviceInfo.localHeight!*.1,
                color: Colors.cyan,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search,color: Colors.white,),
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 80,
        titleSpacing: .5,
      )
    );
  }
}
