part of 'home.dart';

class HomeHelper {
  static Widget tap(DeviceInfo deviceInfo,
      {String? text, IconData? iconData, Color? containerColor, int? flex}) {
    return Expanded(
      flex: (deviceInfo.deviceType == DeviceType.Desktop) ? (flex ?? 3) : 0,
      child: Container(
        height: deviceInfo.deviceType==DeviceType.Desktop ?deviceInfo.localHeight!*.2:
        deviceInfo.localHeight!*.1,
        width: deviceInfo.localWidth!,
        color: containerColor,
        child: Card(
          color: containerColor ?? Colors.white,
          elevation: 0,
          child: InkWell(
            splashColor: Colors.black,
            hoverColor: Colors.black12,
            focusColor: Colors.red,
            highlightColor: Colors.black,
            autofocus: false,
            enableFeedback: true,
            // mouseCursor: MouseCursor.defer,
            child: Container(
              alignment: Alignment.center,
              height: (deviceInfo.deviceType == DeviceType.Desktop)
                  ? deviceInfo.localHeight! * .2
                  : deviceInfo.localHeight! * .09,
              width: (deviceInfo.deviceType == DeviceType.Desktop)
                  ? deviceInfo.localWidth! * .5 / 3
                  : deviceInfo.localWidth,
              color: containerColor ?? Colors.transparent,
              child: iconData == null
                  ? CustomText(
                isNormal: true,

                text: text ?? '',
                      maxFontSize: 18,
                      textColor: Colors.black54,
                    )
                  : Icon(
                      iconData,
                      size: 30,
                      color: Colors.white,
                    ),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }

  static List<Widget> appBarAndDrawerChildren(DeviceInfo deviceInfo) {

    return [
      tap(
        deviceInfo,
        flex: (deviceInfo.deviceType == DeviceType.Desktop) ? 6 : 0,
        text: 'Services & Solutions',
      ),
      tap(
        deviceInfo,
        text: 'QHSE',
      ),
      tap(
        deviceInfo,
        text: 'HR',

      ),
      tap(
        deviceInfo,
        text: 'About',
      ),
      Visibility(
        visible: deviceInfo.deviceType == DeviceType.Desktop,
        child: tap(
          deviceInfo,
          containerColor: Colors.cyan,
          iconData: Icons.search,
        ),
      )
    ];
  }

  static List<Widget> aboutChildren(DeviceInfo deviceInfo ,{double ? height , double ? width}) {
    return [
      customGridTile(
        deviceInfo,
          'OUR PROFILE',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              ' Sed sed arcu faucibus, consequat nulla in, eleifend augue. ',
          Icons.home,
      height: height,width: width),
      customGridTile(        deviceInfo,

          'MISSION',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              ' Sed sed arcu faucibus, consequat nulla in, eleifend augue. ',
          Icons.flag,height: height,width: width),
      customGridTile(
          deviceInfo,
          'Vision',
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
              ' Sed sed arcu faucibus, consequat nulla in, eleifend augue. ',
          Icons.remove_red_eye,height: height,width: width
          ),
    ];
  }

  static Widget customGridTile(DeviceInfo deviceInfo ,String header, String text, IconData iconData,{double ? height,double ?width}) =>
      Container(

         child:  Card(
           elevation: 8,
           child: Container(
             height:height?? deviceInfo.localHeight! * .7,
             width:width?? deviceInfo.localWidth! / 3,
             margin: EdgeInsets.symmetric(horizontal: 15),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Expanded(
                   child: Container(
                     height: deviceInfo.localHeight!*.08,
                     width:deviceInfo.localWidth!  *.6,
                     alignment: Alignment.center,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Expanded(
                           flex:7,
                           child: Align(
                             alignment: Alignment.centerRight,
                             child: Icon(
                               iconData,
                               size: 28,
                               color: Colors.blue.shade700,
                             ),
                           ),
                         ),
                         Expanded(flex :1,child: SizedBox(width: 20,)),
                         Expanded(flex: 10,
                           child: Align(
                             alignment: Alignment.centerLeft,
                             child: CustomText(
                               isNormal: true,

                               text: header,
                               fontSize: 22,
                               textColor: Colors.blue.shade700,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         )
                       ],
                     ),
                   ),
                 ),
                 Expanded(
                   child: CustomText(
                     isNormal: true,

                     text: text,
                     textColor: Colors.black54,
                     textAlign: TextAlign.center,
                     fontSize: 18,
                     maxLines: 8,
                   ),
                 ),
               ],
             ),
           ),
         ),
      );
static List<Widget> qhseChildren(DeviceInfo deviceInfo)=>[
  Container(
  padding: EdgeInsets.all(5),
  child: Image.asset('assets/images/co4.jpeg',
    fit: BoxFit.cover,
    width: deviceInfo.deviceType==DeviceType.Desktop?deviceInfo.localWidth!*.17:deviceInfo.localWidth!,
    height: deviceInfo.localHeight! * .4,


  ),
),
  SizedBox(width: deviceInfo.localWidth!*.01,),
  Card(
    child: Container(
      width: deviceInfo.deviceType==DeviceType.Desktop?deviceInfo.localWidth!*.71:deviceInfo.localWidth!,
      alignment: Alignment.center,
      child: Container(
        width: deviceInfo.deviceType==DeviceType.Desktop?deviceInfo.localWidth!*.6:deviceInfo.localWidth!,

        height:
        deviceInfo.deviceType==DeviceType.Desktop?
        deviceInfo.localHeight!*.4:
        deviceInfo.localHeight!*.3,
padding: EdgeInsets.symmetric(horizontal: 10),
alignment: Alignment.center,

        child: CustomText(
          text:
          'Quality The success of any business enterprise depends on the quality of its people, equipment and process.Process is an important element of the people-equipment-process triangle, which dictates continuous optimization with respect to performance.',
          isNormal: true,

          fontSize: 15,
          maxFontSize:20,
          maxLines: 8,
          textAlign: TextAlign.left,
          textColor: Colors.black54,
        ),
      ),
    ),
  )];

 static Map<String,String> serviceImageList= {
 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
 ' Sed sed arcu faucibus, consequat nulla in': 'assets/images/co5.jpeg',
 'Lorem ipsum dolor sit  , consectetur adipiscing elit.'
 ' Sed sed arcu faucibus, consequat   in' :  'assets/images/co6.jpeg',
 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
 ' Sed sed arcu  , consequat nulla in'   : 'assets/images/co7.jpeg',
   'Lorem ipsum dolor sit  , consectetur adipiscing elit.'
       ' Sed sed arcu faucibus, consequat nu '   :'assets/images/co8.jpeg',
 };
}
