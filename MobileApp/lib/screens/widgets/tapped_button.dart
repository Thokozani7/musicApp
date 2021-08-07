import 'package:MobileApp/constants/constants.dart';
import 'package:flutter/material.dart';

class ButtonTapped extends StatelessWidget {
  final String text;

  ButtonTapped({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.all(4),
      padding: const EdgeInsets.only(top: appPadding, bottom: appPadding / 2),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[850],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[800],
                  offset: Offset(4.0, 4.0),
                  blurRadius: 4.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.grey[900],
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 4.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[900],
                Colors.grey[850],
                Colors.grey[800],
                // Colors.grey[800],
              ],
              stops: [
                0,
                0.1,
                0.3,
                // 1,
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey[850],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[900],
                  offset: Offset(4.0, 4.0),
                  blurRadius: 4.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.grey[800],
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 4.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey[800],
                Colors.grey[850],
                Colors.grey[900],
                // Colors.grey[500],
              ],
              stops: [
                0.1,
                0.3,
                0.8,
                // 1,
              ],
            )),
      ),
    );
  }
}
