import 'package:flutter/material.dart';

import 'reusableCard.dart';

class CostCharge extends StatelessWidget {
  const CostCharge({
    Key key,
    @required this.size,
    @required this.costMinute,
    @required this.list,
    this.onChangeEnd,
    this.onChangeStart,
    this.onChanged,
    this.text,
  }) : super(key: key);

  final Size size;
  final int costMinute;
  final List<int> list;
  final Function onChangeEnd, onChangeStart, onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      size: size,
      height: size.height * 0.5,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 13.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Set Limit',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  hintText: 'Enter Limit here (values are in naira)',
                  hintStyle: TextStyle(fontWeight: FontWeight.w700),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Text(
                    'Auto-deactivate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(
                    Icons.check_circle_outline,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                activeTrackColor: Color(0xff262F56).withOpacity(0.7),
                inactiveTrackColor: Colors.white,
                trackHeight: 12,
                thumbColor: Color(0xff262F56),
                overlayColor: Colors.white,
                overlayShape: RoundSliderOverlayShape(overlayRadius: 15),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 14),
              ),
              child: Container(
                width: size.width * 0.75,
                child: Slider(
                  label: '$costMinute',
                  // divisions: 10,
                  value: costMinute.toDouble(),
                  onChanged: onChanged,

                  min: 1.0,
                  max: 60.0,
                  // divisions: 10,
                  onChangeStart: onChangeStart,

                  onChangeEnd: onChangeEnd,
                ),
              ),
            ),
            Text(
              list.toString(),
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              '(Minutes After Alert)',
              style: TextStyle(color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(top: 28.0, bottom: 4),
              child: Container(
                width: size.width * 0.55,
                height: size.height * 0.075,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    'Set',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
