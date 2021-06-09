import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_builder/responsive_ui_builder.dart';
import '../custom_text/custom_text.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final Size? size;
  final Color? color;
  final Color? textColor;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final bool? showDrawer;
  final bool? showLeading;
  final DeviceInfo deviceInfo;
  final Widget? leadingWidget;
  final List<Widget>? actions;
  final String? title;
  final TextStyle? titleTextStyle;
  final bool? showTrailing;
  final Widget? titleWidget;
  final VoidCallback? trailingOnPressed;
  const CustomAppBar({
    Key? key,
    this.size,
    this.showDrawer = false,
    this.trailingOnPressed,
    this.showTrailing = false,
    this.title,
    this.color,
    required this.deviceInfo,
    this.actions,
    this.textColor,
    this.showLeading = true,
    this.leadingWidget,
    this.titleTextStyle,
    this.scaffoldKey,
    this.titleWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: deviceInfo.deviceType == DeviceType.Desktop
          ? deviceInfo.localWidth! * .2
          : deviceInfo.localWidth! * .3,
      titleTextStyle: titleTextStyle ??
          TextStyle(
            fontFamily: 'Akaya',
            fontSize: 32,
          ),
      titleSpacing: 0,

      systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
      elevation: 0,
      actionsIconTheme: IconThemeData(
        size: 32
      ),
      automaticallyImplyLeading: false,
      leading: leadingWidget ??
          IconButton(
              icon: showDrawer!
                  ? Icon(
                      Icons.menu,
                      color: textColor ?? Colors.indigo.shade300,
                      size: 35,
                    )
                  : Icon(
                      Icons.arrow_back_ios_rounded,
                      color: textColor ?? Colors.indigo.shade300,
                      size: 35,
                    ),
              onPressed: () {
                if (!showDrawer!)
                  Navigator.pop(context);
                else {
                  scaffoldKey!.currentState!.openDrawer();
                }
              }),
      actions: actions ??
          (showTrailing!
              ? [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: textColor,
                      size: 35,
                    ),
                    onPressed: trailingOnPressed,
                  ),
                ]
              : []),
      backgroundColor: color ?? Colors.red,
      // context.read<ThemeCubit>().defaultColor,
      title: titleWidget ??
          CustomText(
            isNormal: false,
            text: title ?? '',
            textStyle: TextStyle(
              fontSize: 28,
              shadows: [Shadow(blurRadius: 2, color: Colors.white)],
              fontWeight: FontWeight.bold,
              fontFamily: 'poppins',
              color: textColor ?? Colors.white,
            ),
          ),

      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => size ?? Size(double.infinity, 80);
}
