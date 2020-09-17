import 'package:flutter/material.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/views/Startup/startup_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => ResponsiveBuilder(
          builder: (context, sizingInformation) => Material(
                type: MaterialType.transparency,
                color: kcbackgroundColor,
                child: ScreenTypeLayout(mobile: mobileStartupView(model, context)),
              )),
      viewModelBuilder: () => StartupViewModel(),
    );
  }

  Widget mobileStartupView(StartupViewModel model, context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: kcbackgroundColor,
      child: Column(
        children: [
          OrientationLayoutBuilder(
            portrait: (context) => mobilePortraitStartupView(context, size),
            landscape: (context) => mobileLandscapeStartupView(context, size),
          ),
          Spacer(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25.0),
            child: OrientationLayoutBuilder(
              portrait: (context)=> signINbuttonPortrait(model, size),
              landscape: (context)=> signINbuttonLandscape(model, size),
              ),
          )
        ],
      ),
    );
  }

  GestureDetector signINbuttonPortrait(StartupViewModel model, Size size) {
    return GestureDetector(
            onTap: () => model.initialise(),
            child: Container(
              decoration: BoxDecoration(
                  color: kcappBarColor,
                  borderRadius: BorderRadius.circular(20.0)),
              width: size.width * 0.3,
              height: size.height * 0.08,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'Sign-IN',
                  style: TextStyle(
                    fontSize: 0.02 * size.height, color: kctextAndIconsColor),
                )),
              ),
            ),
          );
  }

  GestureDetector signINbuttonLandscape(StartupViewModel model, Size size) {
    return GestureDetector(
            onTap: () => model.initialise(),
            child: Container(
              decoration: BoxDecoration(
                  color: kcappBarColor,
                  borderRadius: BorderRadius.circular(20.0)),
              width: size.width * 0.23,
              height: size.height * 0.1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'Sign-IN',
                  style: TextStyle(
                    fontSize: 0.04 * size.height, color: kctextAndIconsColor),
                )),
              ),
            ),
          );
  }

  Container mobilePortraitStartupView(BuildContext context, Size size) {
    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: FlatButton(
        color: kcappBarColor,
        child: Text(
          'We reSOLVE your energy crisis',
          style: TextStyle(
    fontSize: 0.025 * size.height, color: kctitleTextColor),
        ),
        onPressed: () {
          // model.initialise();
        },
      ),
    );
  }

  Container mobileLandscapeStartupView(BuildContext context, Size size) {
    return Container(
      width: size.width,
      height: size.height * 0.4,
      child: FlatButton(
        color: kcappBarColor,
        child: Text(
          'We reSOLVE your energy crisis',
          style: TextStyle(
    fontSize: 0.05 * size.height, color: kctitleTextColor),
        ),
        onPressed: () {
          // model.initialise();
        },
      ),
    );
  }
}
