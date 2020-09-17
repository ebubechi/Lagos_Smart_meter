import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/constants/textStyle.dart';

Widget firstColumn(BuildContext context) {
  var mediaQuery = MediaQuery.of(context).size;
  // double deviceHeight = mediaQuery.height;
  double deviceWidth = mediaQuery.width;
    return Column(
      children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Text('Meter ID:',
                      style: TextStyle(
                          color: kctextAndIconsColor,
                          fontWeight: FontWeight.normal,
                          fontSize: deviceWidth * 0.03)),
                  Text(' 0173826387',
                      style: TextStyle(
                          color: kctextAndIconsColor,
                          fontWeight: FontWeight.bold,
                          fontSize: deviceWidth * 0.05)),
                ],
              ),
            ),
            Spacer(),
            Column(
              children: <Widget>[
                Text(
                  'GSI',
                  style: TextStyle(
                      color: kctextAndIconsColor,
                      fontWeight: FontWeight.bold,
                      fontSize: deviceWidth * 0.07),
                ),
                Text('Type',
                    style: TextStyle(
                        color: kctextAndIconsColor,
                        fontWeight: FontWeight.normal,
                        fontSize: deviceWidth * 0.03)),
              ],
            ),
            Spacer(),
            Column(
              children: <Widget>[
                Text(
                  'Active',
                  style: TextStyle(
                      color: kctextAndIconsColor,
                      fontWeight: FontWeight.bold,
                      fontSize: deviceWidth * 0.07),
                ),
                Text(
                  'Status',
                  style: TextStyle(
                      color: kctextAndIconsColor,
                      fontWeight: FontWeight.normal,
                      fontSize: deviceWidth * 0.03),
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Text(
                          '32 Ajimola street Bridge-way Ikeja',
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: normalTextStyle,
                        ),
                      ),
                    ],
                  ),
                  // Spacer(),
                  SizedBox(width: deviceWidth * 0.03,),
                  curvedEdgeContainer(),
                ],
              ),
            ),
          ],
        ),
         SizedBox(height: 10.0)
      ],
    );
  }

  Widget curvedEdgeContainer() {
    return Material(
    color: kctextAndIconsColor,
    borderRadius: BorderRadius.circular(15.0),
    child: InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'view in map',
          style: TextStyle(color: kcappBarColor),
        ),
      ),
      // decoration: BoxDecoration(
      //     color: textAndIconsColor, borderRadius: BorderRadius.circular(15.0)),
    ),
  );
  }
