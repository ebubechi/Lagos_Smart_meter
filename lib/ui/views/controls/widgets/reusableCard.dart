import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key key,
    @required this.size, this.height,
    @required this.child,
  }) : super(key: key);

  final Size size;
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 13, left: 13, right: 13, bottom: 23),
        //  color: Colors.red,
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
    color: Color(0xff262F56),
    borderRadius: BorderRadius.circular(23),
    boxShadow: [
      BoxShadow(
          color: Color(0xff262F56).withBlue(10),
          offset: Offset(4.0, 4.0),
          blurRadius: 15.0,
          spreadRadius: 1.0),
      BoxShadow(
          color: Colors.white30,
          offset: Offset(-4.0, -5.0),
          blurRadius: 7.0,
          spreadRadius: 1.0),
    ],
    gradient: LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.bottomLeft,
      colors: [
         Color(0xff262F56).withOpacity(0.7), //400
         Color(0xff262F56).withOpacity(0.8), //600
        Color(0xff262F56).withOpacity(0.8), //600
        Color(0xff262F56).withOpacity(0.95),
        Color(0xff262F56).withOpacity(0.95), //700
        Color(0xff262F56).withOpacity(0.95),
         //700
         //700
      ],
    ),
        ),
        child: child,
      );
  }
}
