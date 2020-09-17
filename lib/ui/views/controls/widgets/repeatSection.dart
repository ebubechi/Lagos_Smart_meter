import 'package:flutter/material.dart';

import '../weekdays.dart';

class RepeatSection extends StatelessWidget {
  const RepeatSection({
    Key key,
    @required this.size,
    this.weekdayList
  }) : super(key: key);

  final Size size;
final Function weekdayList;
  
 weekdaysCalendar() {
    List<Widget> weekdayList = [];
    for (var days in weekdays) {
      var allDays = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
              value: true,
              onChanged: null,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
          Text(
            days,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      );

      weekdayList.add(allDays);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: weekdayList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 11.0),
              child: Text(
                'Repeat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Checkbox(value: true, onChanged: null)
          ],
        ),
        SizedBox(
          width: size.width * 0.34,
          child: Divider(
            color: Colors.black,
            thickness: 1.4,
          ),
        ),
        weekdaysCalendar(),
        SizedBox(
          width: size.width * 0.34,
          child: Divider(
            color: Colors.black,
            thickness: 1.4,
          ),
        ),
        Container(
          width: size.width * 0.4,
          height: size.height * 0.04,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              'add another scheduler',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

