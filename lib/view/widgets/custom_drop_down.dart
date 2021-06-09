/*
import 'package:flutter/material.dart';
 import 'package:menu_button/menu_button.dart';

import 'custom_text/custom_text.dart';
 class CustomDropDown extends StatelessWidget {
  final List<String> list;
  final Function onChanged;
  final String value;

  const CustomDropDown(
      {
      required this.list,
      required  this.value,
      required this.onChanged(String value),})
      : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.of(context).size.height*.1,


      child: MenuButton<String>(
menuButtonBackgroundColor: Colors.red,
        itemBackgroundColor: Colors.red,
        edgeMargin: 0,

        child: normalChildButton(value),
        items: list,
        itemBuilder: (String value) => Container(
          height: 40,

          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
          child: Text(value),
        ),
        toggledChild: Container(
          child: normalChildButton(value),
        ),
        onItemSelected: (value)=>onChanged(value)
        ,
        onMenuButtonToggle: (bool isToggle) {
          print(isToggle);
        },
      )
    );
  }
  Widget normalChildButton(String selectedKey) => SizedBox(
  width: 200,
  height: 40,
  child: Padding(
    padding: const EdgeInsets.only(left: 16, right: 11),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Flexible(
            child: CustomText( text: selectedKey,
            textStyle: TextStyle(
              color: Colors.white,

            ),)
        ),
        const SizedBox(
          width: 12,
          height: 17,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Icon(
              Icons.arrow_drop_down,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    ),
  ),
);
}
*/
