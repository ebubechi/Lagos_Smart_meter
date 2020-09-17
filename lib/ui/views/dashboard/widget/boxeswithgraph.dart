import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/views/dashboard/line_chart_sample4.dart';
import 'package:meters/ui/views/dashboard/line_chart_sample5.dart';

import '../line_chart_sample6.dart';
import '../line_chart_sample7.dart';

Container smallBoxWithGraph(double deviceHeight, double deviceWidth) {
  return Container( 
         margin: EdgeInsets.all(6),
         height: deviceHeight / 4.0,
         width: deviceWidth / 2.3,
         decoration: BoxDecoration(  
           color: kcbackgroundColor,
           borderRadius: BorderRadius.all(Radius.circular(10.0)),
           boxShadow: [
             BoxShadow(
               color: Colors.grey.withOpacity(0.2),
               spreadRadius: 3,
               blurRadius: 7,
               offset: Offset(1, 2)
             )
           ]
         ),
        child: Column(children: <Widget>[
          Text('Power (W)',
          style: TextStyle(  
            color: Colors.red.withOpacity(0.3),
            fontSize: 22.0,
            fontWeight: FontWeight.w600
          ),),
          Padding(
            padding: const EdgeInsets.only(left:8.0, right: 8.0),
            child: Divider(color: kcappBarColor.withOpacity(0.5),
              height: 2.5,
              thickness: 2.5,),
          ),
          Text('48.23',
          style: TextStyle(
            color: Colors.red.withOpacity(0.3),
            fontSize: 40.0,
            fontWeight: FontWeight.w800
          ),),
          LineGraph1()
          // Divider(height: 15.0),
          // Material( 
          //   color: textAndIconsColor,
          //   borderRadius: BorderRadius.circular(10.0),
          //   child: Text('Graph goes here'),
          // )
        ],),
       );
}
Container smallSecondBoxWithGraph(double deviceHeight, double deviceWidth) {
  return Container( 
         margin: EdgeInsets.all(6.0),
         height: deviceHeight / 4,
         width: deviceWidth / 2.3,
         decoration: BoxDecoration(  
           color: kcbackgroundColor,
           borderRadius: BorderRadius.all(Radius.circular(10.0)),
           boxShadow: [
             BoxShadow(
               color: Colors.grey.withOpacity(0.2),
               spreadRadius: 3,
               blurRadius: 7,
               offset: Offset(1, 2)
             )
           ]
         ),
        child: Column(children: <Widget>[
          Text('Energy (KWh)',
          style: TextStyle(  
            color: Colors.greenAccent.withOpacity(0.3),
            fontSize: 22.0,
            fontWeight: FontWeight.w600
          ),),
          Padding(
            padding: const EdgeInsets.only(left:8.0, right: 8.0),
            child: Divider(color: kcappBarColor.withOpacity(0.5),
              height: 2.5,
              thickness: 2.5,),
          ),
          Text('58.27',
          style: TextStyle(
            color: Colors.greenAccent.withOpacity(0.3),
            fontSize: 40.0,
            fontWeight: FontWeight.w800
          ),),
          LineGraph2()
          // Divider(height: 15.0),
          // Material( 
          //   color: textAndIconsColor,
          //   borderRadius: BorderRadius.circular(10.0),
          //   child: Text('Graph goes here'),
          // )
        ],),
       );
}


Container bigBoxWithGraph(double deviceHeight, double deviceWidth) {
  return Container( 
         margin: EdgeInsets.all(6.0),
         height: deviceHeight / 3.6,
         width: deviceWidth / 1.09,
         decoration: BoxDecoration(  
           color: kcbackgroundColor,
           borderRadius: BorderRadius.all(Radius.circular(10.0)),
           boxShadow: [
             BoxShadow(
               color: Colors.grey.withOpacity(0.2),
               spreadRadius: 3,
               blurRadius: 7,
               offset: Offset(1, 2)
             )
           ]
         ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 20.0),
            child: Row(
              children: <Widget>[
                Text('Voltage (k)  ',
                style: TextStyle(  
                  color: Color(0xff74C0FF).withOpacity(0.5),
                  fontSize: 23.0,
                  fontWeight: FontWeight.w600
                ),),
                Text('  58.27',
                style: TextStyle(  
                  color: Color(0xff74C0FF).withOpacity(0.5),
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left:8.0, right: 8.0, bottom: 5.5),
          //   child: Divider(color: AppBarColor.withOpacity(0.5),
          //     height: 0.0,
          //     thickness: 2.5,),
          // ),
          // Text('hg',
          // style: TextStyle(
          //   color: Colors.red.withOpacity(0.3),
          //   fontSize: 35.0,
          //   fontWeight: FontWeight.w800
          // ),
          // ),
          LineGraph3(),
          // Material( 
          //   color: textAndIconsColor,
          //   borderRadius: BorderRadius.circular(10.0),
          //   child: Text('Graph goes here'),
          // )
        ],),
       );
}


Container biggerBoxWithGraph(double deviceHeight, double deviceWidth) {
  return Container( 
         margin: EdgeInsets.all(6.0),
         height: deviceHeight / 2.3,
         width: deviceWidth / 1.09,
         decoration: BoxDecoration(  
           color: kcbackgroundColor,
           borderRadius: BorderRadius.all(Radius.circular(10.0)),
           boxShadow: [
             BoxShadow(
               color: Colors.grey.withOpacity(0.2),
               spreadRadius: 3,
               blurRadius: 7,
               offset: Offset(1, 2)
             )
           ]
         ),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0, left: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 120.0, right: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('#5,478.3456',
                  style: TextStyle(  
                    color: kctextAndIconsColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600
                  ),),
                  Text('Estimated cost this month',
                  textAlign: TextAlign.right,
                  style: TextStyle(  
                    color: kctextAndIconsColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0, right: 8.0, bottom: 10.0),
            child: Divider(color: kcappBarColor.withOpacity(0.5),
              height: 2.5,
              thickness: 2.5,),
          ),
          // Text('',
          // style: TextStyle(
          //   color: Colors.red.withOpacity(0.3),
          //   fontSize: 35.0,
          //   fontWeight: FontWeight.w800
          // ),
          // ),
          // Divider(height: 15.0),
          LineGraph4(),
          // Material( 
          //   color: textAndIconsColor,
          //   borderRadius: BorderRadius.circular(10.0),
          //   child: Text('Graph goes here'),
          // )
        ],),
       );
}
