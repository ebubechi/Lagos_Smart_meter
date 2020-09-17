import 'package:flutter/material.dart';
import 'package:meters/app/locator.dart';
import 'package:meters/app/router.gr.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked_services/stacked_services.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            children: <Widget>[
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  initialRoute: Routes.startupView,
                  onGenerateRoute: Router().onGenerateRoute,
                ),
              )
            ],
          ),
      ),
    );
  }
}
