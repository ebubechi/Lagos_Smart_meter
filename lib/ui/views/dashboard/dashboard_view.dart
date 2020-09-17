import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/constants/textStyle.dart';
import 'package:meters/ui/views/dashboard/secondColumn.dart';
import 'package:meters/ui/views/dashboard/thirdColumn.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_view_model.dart';
import 'firstColumn.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashBoardViewModel>.reactive(
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            title: Text(
              "DASHBOARD",
              style: appbarTextStyle,
            ),
            centerTitle: true,
            backgroundColor: kcappBarColor),
        backgroundColor: kcbackgroundColor,
        body: buildBodyView(context, model),
      ),
      viewModelBuilder: () => DashBoardViewModel(),
    );
  }

  SingleChildScrollView buildBodyView(BuildContext context, model) {
    return SingleChildScrollView(
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        child: Column(
          children: <Widget>[
            firstColumn(context),
            Divider(
              thickness: 1.5,
              color: kcappBarColor,
            ),
            secondColumn(context, model),
            Divider(
              thickness: 1.5,
              color: kcappBarColor,
            ),
            thirdColumn(context)
          ],
        ),
      )),
    );
  }
}
