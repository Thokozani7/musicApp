import 'package:MobileApp/constants/constants.dart';
import 'package:flutter/material.dart';

class NeumorphicTextFieldContainer extends StatelessWidget {
  final Widget child;

  const NeumorphicTextFieldContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: appPadding / 2),
      decoration: BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.centerLeft,
        //   end: Alignment.centerRight,
        //   colors: [lightPrimary, darkPrimary],
        // ),
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            offset: Offset(-4, -4),
            spreadRadius: 1,
            blurRadius: 4,
            color: darkShadow
          ),
          BoxShadow(
            offset: Offset(4, 4),
            spreadRadius: 1,
            blurRadius: 4,
            color: lightShadow
          )
        ]
      ),
      child: child,
    );
  }
}
