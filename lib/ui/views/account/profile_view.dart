import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/constants/textStyle.dart';
import 'package:stacked/stacked.dart';

import 'profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
            title: Text("USER PROFILE", style: appbarTextStyle),
            centerTitle: true,
            backgroundColor: kcappBarColor),
        backgroundColor: kcbackgroundColor,
        body: Center(
          child: Container(
            child: Text('Profile'),
          ),
        ),
      ),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
