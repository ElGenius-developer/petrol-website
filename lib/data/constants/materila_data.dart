import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaterialData {
  static const kPrimaryColor = Color(0xff6200EE);
  static const kPrimaryLightColor = Color(0xFFF1E6FF);

  //custom category
  final Color pinkColor = Color(0xF8CD265A);
  final Color blackColor = Color(0xff1B222F);
  final Color whiteColor = Color(0xFFE5E8E8);
  final Color blueColor = Color(0xE90974C8);

////////Dark Theme
  ThemeData darkThemeData = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Colors.red[800],
    cardColor: Color(0xff1B222F),
    fontFamily: 'Akaya',
    // backgroundColor:Color(0xff1B222F) ,
    scaffoldBackgroundColor: Color(0xff1B222F),
    primaryColorDark: Color(0xff1B222F),
    canvasColor: Color(0xff1B222F),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.red[800],
    ),
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: Colors.red[900],
    ),
    shadowColor: Color(0xff1B222F),
    colorScheme: ColorScheme.dark(),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.white,
    ),
  );
////////Light Theme
  ThemeData lightThemData = ThemeData(
    focusColor: Colors.deepPurple,
    bottomAppBarColor: Colors.deepPurple,
    indicatorColor: Colors.deepPurple,
    unselectedWidgetColor: Colors.deepPurple,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      splashColor: Colors.deepPurple,
      hoverColor: Colors.deepPurple,
      focusColor: Colors.deepPurple,
      foregroundColor: Colors.deepPurple,
      backgroundColor: MaterialData.kPrimaryColor,
    ),
    hoverColor: MaterialData.kPrimaryColor,
    buttonColor: Colors.deepPurpleAccent,
    accentColor: Colors.deepPurple,
    splashColor: Colors.deepPurpleAccent,

    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: MaterialData.kPrimaryColor,
    primaryColorLight: Colors.deepPurpleAccent,
    canvasColor: Color(0xffF0F3F4),
    scaffoldBackgroundColor: Color(0xffF0F3F4),
    backgroundColor: Color(0xffF0F3F4),
    brightness: Brightness.light,

    cardColor: Colors.white,
    shadowColor: Colors.black38,
    highlightColor: Colors.white10,
    // fontFamily: 'Akaya',
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.red,
      // selectedItemColor: Colors.black12,
      selectedItemColor: Colors.black,
    ),
    primarySwatch: Colors.purple,
    accentColorBrightness: Brightness.light,

    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xffF0F3F4),

      // color: Color(0xF8CD265A),
      brightness: Brightness.light,
    ),
    colorScheme: ColorScheme.light(),
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.purple.shade100,
      cursorColor: Colors.purple.shade100,
    ),
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.black),
    ),
  );
}
