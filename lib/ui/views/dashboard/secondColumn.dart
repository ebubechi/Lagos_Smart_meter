import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/constants/textStyle.dart';

Column secondColumn(BuildContext context, model) {
  var mediaQuery = MediaQuery.of(context).size;
  // double deviceHeight = mediaQuery.height;
  double deviceWidth = mediaQuery.width;
  return Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
    Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: deviceWidth * 0.7,
            child: Text('Adebola Ciromanna Chukwuma',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: kctextAndIconsColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0)),
          ),
        ],
      ),
    ),
    SizedBox(height: 15.0),
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      "Energy Remaining: ",
                      style: normalTextStyle,
                    ),
                  ),
                  Text(
                    "5,034 kWh",
                    style: TextStyle(
                        color: kctextAndIconsColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[curvedEdgeContainer()],
              ),
              SizedBox(height: 10.0)
            ],
          ),
        ),
      ],
    )
  ]);
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
          'see how we charge you',
          style: TextStyle(color: kcappBarColor),
        ),
      ),
      // decoration: BoxDecoration(
      //     color: textAndIconsColor, borderRadius: BorderRadius.circular(15.0)),
    ),
  );
}
