import 'package:flutter/material.dart';

import 'clockDesign.dart';

class FullClockDesign extends StatelessWidget {
  const FullClockDesign({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ClockDesign(
              size: size,
              colorOutside: Colors.blue,
              colorinside: Colors.white,
              textNumbers: '10:34',
              textsuffix: '\u00B2,' + '\u2077',
              subtitle: 'until Activation',
            ),
            ClockDesign(
              size: size,
              colorOutside: Colors.blue,
              colorinside: Colors.white,
              textNumbers: '02:23',
              textsuffix: '\u00B2,' + '\u2077',
              subtitle: 'until Activation',
            ),
            ClockDesign(
              size: size,
              colorOutside: Colors.red,
              colorinside: Colors.white,
              textNumbers: '02:23',
              textsuffix: '\u00B2,' + '\u2077',
              subtitle: 'until Activation',
            ),
          ],
        ),
        Row(
          children: <Widget>[
            ClockDesign(
              size: size,
              colorOutside: Colors.red,
              colorinside: Colors.white,
              textNumbers: '10:34',
              textsuffix: '\u00B2,' + '\u2077',
              subtitle: 'until Activation',
            ),
            ClockDesign(
              size: size,
              colorOutside: Colors.blue,
              colorinside: Colors.white,
              textNumbers: '02:23',
              textsuffix: '\u00B2,' + '\u2077',
              subtitle: 'until Activation',
            ),
            ClockDesign(
              size: size,
              colorOutside: Colors.red,
              colorinside: Colors.white,
              textNumbers: '02:23',
              textsuffix: '\u00B2,' + '\u2077',
              subtitle: 'until Activation',
            ),
          ],
        ),
      ],
    );
  }
}
