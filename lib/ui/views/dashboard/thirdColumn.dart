import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/constants/textStyle.dart';
import 'package:meters/ui/views/dashboard/widget/boxeswithgraph.dart';

Widget thirdColumn(BuildContext context) {
  final deviceHeight = MediaQuery.of(context).size.height;
  final deviceWidth = MediaQuery.of(context).size.width;
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top:8.0),
        child: Row(children: <Widget>[
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text('Meter Readings',
            style: TextStyle(
                color: kctextAndIconsColor,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),),
            Text('(Real-time)', 
            style: normalTextStyle,)
          ],),
          Spacer(),
          Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            Text('128 hrs',
            style: TextStyle(
                color: kctextAndIconsColor,
                fontWeight: FontWeight.w400,
                fontSize: 20.0),),
            Text('This month On-hours', 
            style: normalTextStyle,)
          ],),
        ],),
      ),
      Row(
        children: <Widget>[
        Column(children: <Widget>[
         smallBoxWithGraph(deviceHeight, deviceWidth),
        ],),
        Column(children: <Widget>[
         smallSecondBoxWithGraph(deviceHeight, deviceWidth),
        ],),
      ],),
      Row(children: <Widget>[
         bigBoxWithGraph(deviceHeight, deviceWidth),
      ],),
      Padding(
        padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 12.0),
        child: Divider(
          thickness: 1.5,
          color: kcappBarColor,),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Overview', 
              style: TextStyle(color: kctextAndIconsColor,
              fontSize: 22.0,
              fontWeight: FontWeight.w500
              ),),
          ],
        ),
      ),
      Row(children: <Widget>[
         biggerBoxWithGraph(deviceHeight, deviceWidth),
      ],),
      // Padding(
      //   padding: const EdgeInsets.only(left:8.0, top: 8.0, bottom: 8.0),
      //   child: Row(children: <Widget>[
      //     _timeButton('1 hr'),
      //     _timeButton('24 hr'),
      //     _timeButton('1 week'),
      //     _timeButton('1 month'),
      //     _timeButton('1 year'),
      //     _timeButton('All time'),
      //   ],),
      // )
    ]
  );
}

// Widget _timeButton(String time) {
//   return Padding(
//     padding: const EdgeInsets.only(left:1.0),
//     child: InkWell(
//             onTap: () {},
//             child: Container( 
//               height: 28.0,
//               width: 53.0,
//               child: Center(child: Text('$time', style: TextStyle(fontWeight: FontWeight.w600),)),
//               decoration: BoxDecoration(
//                 color: kctextAndIconsColor,
//                 borderRadius: BorderRadius.circular(15.0)
//               ),
//             )
//           ),
//   );
// }

