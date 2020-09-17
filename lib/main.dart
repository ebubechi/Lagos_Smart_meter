import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meters/app/locator.dart';
import 'package:meters/app/router.gr.dart';
// import 'package:meters/ui/constants/colors.dart';
// import 'package:meters/ui/views/home/home_view.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/locator.dart';
import 'ui/constants/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: kcbackgroundColor,
      statusBarColor: kcappBarColor,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light));
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'reSOLVE',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          // home: LayoutTemplate()
          initialRoute: Routes.startupView,
          onGenerateRoute: Router().onGenerateRoute,
          navigatorKey: locator<NavigationService>().navigatorKey,
        );

  }
}
