import 'package:flutter/material.dart';

class ClockDesign extends StatelessWidget {
  final String textNumbers, subtitle, textsuffix;
  final Color colorOutside, colorinside,subtitleColor;

  

  const ClockDesign(
      {Key key,
      @required this.size,
      this.textNumbers,
      this.subtitle,
      this.textsuffix,
      this.colorOutside,
      this.colorinside, this.subtitleColor})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(7),
      width: size.width * 0.27,
      height: size.height * 0.17,
      decoration: BoxDecoration(color: colorOutside, shape: BoxShape.circle),
      child: Container(
        margin: EdgeInsets.all(7.3),
        width: size.width * 0.3,
        height: size.height * 0.17,
        decoration: BoxDecoration(color: colorinside, shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              // textBaseline: TextBaseline.alphabetic,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textNumbers,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: size.width * 0.04),
                ),
                Text(
                  textsuffix,
                  style: TextStyle(
                      fontSize: size.width * 0.045,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize:size.width * 0.025,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
                color: subtitleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
