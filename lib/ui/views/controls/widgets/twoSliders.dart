import 'package:flutter/material.dart';

class TwoSliders extends StatelessWidget {
  const TwoSliders({
    Key key,
    @required this.size,
    @required this.deHour,
    @required this.deMinute,
    this.onChangedLeft,
    this.onChangeStartLeft,
    this.onChangeEndLeft,
    this.onChangedRight,
    this.onChangeStartRight,
    this.onChangeEndRight,
  }) : super(key: key);

  final Size size;
  final int deHour;
  final int deMinute;
  final Function onChangedLeft,
      onChangeStartLeft,
      onChangeEndLeft,
      onChangedRight,
      onChangeStartRight,
      onChangeEndRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //LEFT SLIDER

        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'data',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: Color(0xff262F56).withOpacity(0.7),
                        inactiveTrackColor: Colors.white,
                        trackHeight: 12,
                        thumbColor: Color(0xff262F56),
                        overlayColor: Colors.white,
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 15),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 14),
                      ),
                      child: Container(
                        width: size.width * 0.75,
                        child: Slider(
                          value: deHour.toDouble(),
                          onChanged: onChangedLeft,
                          min: 1.0,
                          max: 12.0,
                          divisions: 36,
                          label: '$deHour',
                          onChangeStart: onChangeStartLeft,
                          onChangeEnd: onChangeEndLeft,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'Hour',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
              )
            ],
          ),
        ),

        //RIGHT SLIDER
        Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'data',
                  style: TextStyle(color: Colors.white),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: SliderTheme(
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
                        label: '$deMinute',
                        // divisions: 10,
                        value: deMinute.toDouble(),
                        onChanged: onChangedRight,

                        min: 1.0,
                        max: 60.0,
                        // divisions: 10,
                        onChangeStart: onChangeStartRight,

                        onChangeEnd: onChangeEndRight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text('Minute',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18))
          ],
        )
      ],
    );
  }
}
