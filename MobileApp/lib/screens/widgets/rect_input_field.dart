import 'package:MobileApp/constants/constants.dart';
import 'package:MobileApp/screens/widgets/neumorphic_text_field.dart';
import 'package:flutter/material.dart';

class RectangulaInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscureText;

  const RectangulaInputField(
      {Key key, this.hintText, this.icon, this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicTextFieldContainer(
      child: TextField(
        obscureText: obscureText,
        cursorColor: Colors.white,
        // controller: _passwordController,
        // style: style,

        decoration: InputDecoration(
          hintStyle: TextStyle(color: white),
          hintText: hintText,
          helperStyle: TextStyle(
            color: white.withOpacity(0.7),
            fontSize: 18,
          ),
          prefixIcon: Icon(
            icon,
            color: white.withOpacity(0.7),
            size: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
