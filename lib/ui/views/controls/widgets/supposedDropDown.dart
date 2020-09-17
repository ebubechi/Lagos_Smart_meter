
import 'package:flutter/material.dart';

class SupposedDropDown extends StatelessWidget {
  const SupposedDropDown({
    Key key,
    @required this.size, this.text,
  }) : super(key: key);

  final Size size;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: 13, left: 7, right: 13, bottom: 10),
      //  color: Colors.red,
      height: size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff262F56),
        borderRadius: BorderRadius.circular(23),
        boxShadow: [
          BoxShadow(
              color: Color(0xff262F56).withGreen(18),
              offset: Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0),
          BoxShadow(
              color: Colors.white12,
              offset: Offset(-4.0, -5.0),
              blurRadius: 5.0,
              spreadRadius: 1.0),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            Color(0xff262F56).withOpacity(0.7), //400
            Color(0xff262F56).withOpacity(0.8), //600
            Color(0xff262F56).withOpacity(0.8), //600
            Color(0xff262F56).withOpacity(0.95), //700
            Color(0xff262F56).withOpacity(0.95), //700
            Color(0xff262F56).withOpacity(0.95), //700

          ],
        ),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:13.0),
        child: Align(
          alignment: Alignment.centerLeft,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500
                ),
              ),
              Icon(Icons.arrow_drop_down_circle, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
