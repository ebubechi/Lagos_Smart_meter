import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/constants/textStyle.dart';
import 'package:stacked/stacked.dart';

import 'activity_view_model.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ActivityViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.filter_list), onPressed: () {})
            ],
            title: Text(
              "ACTIVITIES",
              style: appbarTextStyle,
            ),
            centerTitle: true,
            backgroundColor: kcappBarColor),
        backgroundColor: kcbackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _activityWidget(
                  context, 'You remotely activated your meter.', '20 mins ago'),
              _activityWidget(
                  context, '#5, 000 Cost Alert limit reached!', '40 mins ago'),
              _activityWidget(
                  context, 'You set a new activation schedule.', '4 hours ago'),
              _activityWidget(
                  context,
                  'Your meter was automatically activated as scheduled',
                  '30 mins ago'),
              _activityWidget(context, 'You remotely deactivated your meter.',
                  '2 days ago'),
              _activityWidget(
                  context,
                  'Your meter was automatically activated as scheduled',
                  'jun 07, 2020'),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ActivityViewModel(),
    );
  }

  Widget _activityWidget(context, String content, String time) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 15.0,
        right: 15.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: kcbackgroundColor,
        ),
        // width: MediaQuery.of(context).size.width * 0.95,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        color: kctextAndIconsColor,
                        borderRadius: BorderRadius.circular(50.0))),
                // Spacer(),
                Flexible(
                  child: Text(
                    content,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                        color: kctextAndIconsColor),
                  ),
                )
              ],
            ),
            Text(
              time,
              style: TextStyle(
                  color: kctextAndIconsColor, fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 15.0),
              child: Divider(
                thickness: 2.0,
                color: kcappBarColor.withOpacity(0.6),
              ),
            )
          ],
        ),
      ),
    );
  }
}
