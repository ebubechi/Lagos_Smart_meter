import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/constants/textStyle.dart';
import 'package:meters/ui/views/controls/main.dart';
import 'package:stacked/stacked.dart';

import 'control_view_model.dart';

class ControlView extends StatelessWidget {
  const ControlView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ControlViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            title: Text(
              "CONTROLS",
              style: appbarTextStyle,
            ),
            centerTitle: true,
            backgroundColor: kcappBarColor),
        backgroundColor: kcbackgroundColor,
        body: MyHomePage(),
      ),
      viewModelBuilder: () => ControlViewModel(),
    );
  }
}
