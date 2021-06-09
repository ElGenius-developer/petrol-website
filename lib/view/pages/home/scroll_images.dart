part of 'home.dart';

class ScrollImages extends StatefulWidget {
  final DeviceInfo deviceInfo;
  const ScrollImages({Key? key, required this.deviceInfo}) : super(key: key);

  @override
  _ScrollImagesState createState() => _ScrollImagesState();
}

class _ScrollImagesState extends State<ScrollImages> {
  int index = 0;
  final _listImages = [
    'assets/images/co1.jpeg',
    'assets/images/co2.jpeg',
    'assets/images/co3.jpeg',
  ];
  List<Image> imageList = <Image>[];

  @override
  void initState() {
    _listImages.forEach((imageLink) {
      imageList.add(Image.asset(
        imageLink,
        fit: BoxFit.cover,
      ));
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Future.delayed(Duration(seconds: 1));
    imageList.forEach((_image) {
      precacheImage(_image.image, context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.deviceInfo.localHeight!*.87,
      width: widget.deviceInfo.localWidth!,
      child: Stack(
        children: [
          CarouselSlider(
              items: imageList
                  .map((_image) => Stack(
                        children: [
                          Image(
                            image: _image.image,
                            fit: BoxFit.cover,
                            height: widget.deviceInfo.localHeight!,
                            width: widget.deviceInfo.localWidth!,
                            filterQuality: FilterQuality.high,
                          ),
                          Container(
                            height: widget.deviceInfo.localHeight!,
                            width: widget.deviceInfo.localWidth!,
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(color: Colors.black12.withOpacity(.4))
                            ]),
                          ),
                          Center(
                            child: Container(

                              height: widget.deviceInfo.localHeight!,
                              width: widget.deviceInfo.localWidth!,
                              alignment: Alignment.center,
                              color:Colors.black12,
                              child: Container(
                                width: widget.deviceInfo.localWidth!*.8,
                                child: CustomText(
                                  isNormal: true,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black,
                                        blurRadius: 7
                                    ),
                                    Shadow(
                                      color: Colors.white,
                                      blurRadius: 7
                                    ), Shadow(
                                      color: Colors.black,
                                      blurRadius: 7
                                    ),
                                  ],

                                  maxFontSize: widget.deviceInfo.deviceType ==
                                      DeviceType.Desktop
                                      ? 32
                                      : 20,
                                  fontSize: widget.deviceInfo.deviceType ==
                                      DeviceType.Desktop
                                      ?30:19,
                                  // fontFamily: 'cambria',
                                  fontWeight: FontWeight.bold,
                                  maxLines: 8,
                                  text:
                                  "Choice And Flexibility To Digitally Transform Your E&P Operations,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",

                                ),
                              ),
                            ),
                          ),


                        ],
                      ))
                  .toList(),
              options: CarouselOptions(
                height: widget.deviceInfo.localHeight!*.9,
                aspectRatio: 16 / 8,
                viewportFraction:1 ,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: false,
                onPageChanged: (_index, reason) {
                  setState(() {
                    index=_index;
                  });
                },
                autoPlayInterval: Duration(seconds: 10),

                autoPlayCurve: Curves.bounceInOut,
                enlargeCenterPage: true,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )),

          Positioned(
              height: widget.deviceInfo.localHeight!*1.5,
              width: widget.deviceInfo.localWidth,
              child: dots(index, imageList.length)),

        ],
      ),
    );
  }

  Widget dots(int index, int length) => DotsIndicator(
        dotsCount: length,
        position: index.toDouble(),
    decorator: DotsDecorator(
      activeColor: Colors.red.shade500,
      color: Colors.white,

    ),
      );
}
