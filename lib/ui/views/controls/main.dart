import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meters/ui/views/controls/weekdays.dart';
import 'package:meters/ui/views/controls/widgets/1stContent.dart';
import 'package:meters/ui/views/controls/widgets/contents.dart';
import 'package:meters/ui/views/controls/widgets/costCharge.dart';
import 'package:meters/ui/views/controls/widgets/fullClock.dart';
import 'package:meters/ui/views/controls/widgets/reusableCard.dart';
import 'package:meters/ui/views/controls/widgets/supposedDropDown.dart';
import 'package:meters/ui/views/controls/widgets/twoSliders.dart';



class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);

  // final String title = '';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int hour = 5;
  int hourEnd = 11;

  int deHour = 5;
  int deHourEnd = 11;

  int minute = 25;
  int minuteEnd = 60;

  int deMinute = 25;
  int deMinuteEnd = 60;

  int costMinute = 25;
  int costMinuteEnd = 60;

  int powerMinute = 25;
  int powerMinuteEnd = 60;

  int energyMinute = 25;
  int energyMinuteEnd = 60;

  int voltageMinute = 25;
  int voltageMinuteEnd = 60;

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

  Iterable<int> get positiveIntegers sync* {
    int i = 0;
    while (true) yield i + 5;
  }

  var list = [for (var i = 0; i < 60; i += 5) i];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff262F56),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ReusableCard(
                size: size,
                child: FullClockDesign(size: size),
              ),

              //
              ReusableCard(
                size: size,
                height: size.height * 0.565,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 11.0),
                              child: Text(
                                'Activation time',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            Transform.scale(
                                scale: 1.5,
                                child: Switch(
                                  value: true,
                                  onChanged: null,
                                  inactiveTrackColor: Colors.white,
                                  inactiveThumbColor: Color(0xff2C3E50),
                                ))
                          ],
                        ),

                        //THE 2 Sliders, Row for Activation Card
                        TwoSliders(
                          size: size,
                          deHour: hour,
                          deMinute: minute,

                          //SLIDER ON THE LEFT
                          onChangedLeft: (double newValue) {
                            setState(() {
                              hour = newValue.round();
                            });
                          },
                          onChangeStartLeft: (double newValue) {
                            setState(() {
                              hour = newValue.round();
                            });
                          },
                          onChangeEndLeft: (double newValue) {
                            setState(() {
                              hourEnd = newValue.round();
                            });
                          },

                          //SLIDER ON THE RIGHT
                          onChangedRight: (double newValue2) {
                            setState(() {
                              minute = newValue2.round();
                            });
                          },
                          onChangeStartRight: (double newValue2) {
                            setState(() {
                              minute = newValue2.round();
                            });
                          },
                          onChangeEndRight: (double newValue2) {
                            setState(() {
                              minuteEnd = newValue2.round();
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
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
                    )
                  ],
                ),
              ),

              ReusableCard(
                size: size,
                height: size.height * 0.565,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 11.0),
                              child: Text(
                                'DeActivation time',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            Transform.scale(
                                scale: 1.5,
                                child: Switch(
                                  value: true,
                                  onChanged: null,
                                  inactiveTrackColor: Colors.white,
                                  inactiveThumbColor: Color(0xff2C3E50),
                                ))
                          ],
                        ),

                        //THE 2 Sliders Row for Deactivation Card
                        TwoSliders(
                          size: size,
                          deHour: deHour,
                          deMinute: deMinute,

                          //SLIDER ON THE LEFT
                          onChangedLeft: (double newValue) {
                            setState(() {
                              deHour = newValue.round();
                            });
                          },
                          onChangeStartLeft: (double newValue) {
                            setState(() {
                              deHour = newValue.round();
                            });
                          },
                          onChangeEndLeft: (double newValue) {
                            setState(() {
                              deHourEnd = newValue.round();
                            });
                          },

                          //SLIDER ON THE RIGHT
                          onChangedRight: (double newValue2) {
                            setState(() {
                              deMinute = newValue2.round();
                            });
                          },
                          onChangeStartRight: (double newValue2) {
                            setState(() {
                              deMinute = newValue2.round();
                            });
                          },
                          onChangeEndRight: (double newValue2) {
                            setState(() {
                              deMinuteEnd = newValue2.round();
                            });
                          },
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Checkbox(value: true, onChanged: null),
                            )
                          ],
                        ),

                        //CHECK DIVIDER
                        SizedBox(
                          width: size.width * 0.34,
                          child: Divider(
                            color: Colors.black,
                            thickness: 1.4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: weekdaysCalendar(),
                          ),
                        SizedBox(
                          width: size.width * 0.34,
                          child: Divider(
                            color: Colors.black,
                            thickness: 1.4,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Container(
                            width: size.width * 0.3,
                            height: size.height * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  ' add another scheduler',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                
                            ),
                              ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              CostCharge(
                text: 'On Cost Charge',
                size: size,
                costMinute: costMinute,
                list: list,
                onChanged: (double newValue2) {
                  setState(() {
                    costMinute = newValue2.round();
                  });
                },
                onChangeStart: (double newValue2) {
                  setState(() {
                    costMinute = newValue2.round();
                  });
                },
                onChangeEnd: (double newValue2) {
                  setState(() {
                    costMinuteEnd = newValue2.round();
                  });
                },
              ),
              CostCharge(
                size: size,
                costMinute: powerMinute,
                list: list,
                text: 'On Power',
                onChanged: (double newValue2) {
                  setState(() {
                    powerMinute = newValue2.round();
                  });
                },
                onChangeStart: (double newValue2) {
                  setState(() {
                    powerMinute = newValue2.round();
                  });
                },
                onChangeEnd: (double newValue2) {
                  setState(() {
                    powerMinuteEnd = newValue2.round();
                  });
                },
              ),
              CostCharge(
                size: size,
                costMinute: energyMinute,
                list: list,
                text: 'On Energy',
                onChanged: (double newValue2) {
                  setState(() {
                    energyMinute = newValue2.round();
                  });
                },
                onChangeStart: (double newValue2) {
                  setState(() {
                    energyMinute = newValue2.round();
                  });
                },
                onChangeEnd: (double newValue2) {
                  setState(() {
                    energyMinuteEnd = newValue2.round();
                  });
                },
              ),

              CostCharge(
                size: size,
                costMinute: voltageMinute,
                list: list,
                text: 'On Voltage',
                onChanged: (double newValue2) {
                  setState(() {
                    voltageMinute = newValue2.round();
                  });
                },
                onChangeStart: (double newValue2) {
                  setState(() {
                    voltageMinute = newValue2.round();
                  });
                },
                onChangeEnd: (double newValue2) {
                  setState(() {
                    voltageMinuteEnd = newValue2.round();
                  });
                },
              ),

              Container(
                width: double.infinity,
                height: size.height * 0.55,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Alert',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        Transform.scale(
                          scale: 1.5,
                          child: Switch(
                            value: true,
                            onChanged: null,
                            inactiveTrackColor: Colors.white,
                            inactiveThumbColor: Color(0xff2C3E50),
                          ),
                        ),
                      ],
                    ),
                    SupposedDropDown(size: size, text: 'On Cost Charge'),
                    SupposedDropDown(size: size, text: 'On Power'),
                    SupposedDropDown(size: size, text: 'On Energy'),
                    SupposedDropDown(size: size, text: 'On Voltage'),
                  ],
                ),
              ),

              //Last CONTENT WITH OPTION
              ReusableCard(
                size: size,
                height: size.height * 0.5,
                child: Column(
                  children: [
                    //THIS COLUMN BELOW IS FOR THE FIRST CONTENT ONLY
                    ContentsActivate(size: size),

                    ControlContents(
                      size: size,
                      title: 'Schedule activate/deactivate meter',
                      subtitle:
                          'You can schedule multiple activations/deactivations for your meter',
                      divider: Divider(
                        color: Colors.black,
                        thickness: 1.4,
                      ),
                    ),
                    ControlContents(
                      size: size,
                      title: 'Set Alert Limits',
                      subtitle:
                          'you can set multiple alerts against your meter readings, and also auto-deactivate your meter',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

