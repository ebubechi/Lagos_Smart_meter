// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/Startup/startup_view.dart';
import '../ui/views/account/profile_view.dart';
import '../ui/views/activity/activity_view.dart';
import '../ui/views/controls/control_view.dart';
import '../ui/views/dashboard/dashboard_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/payment/payment_view.dart';

class Routes {
  static const String startupView = '/';
  static const String homeView = '/home-view';
  static const String dashBoardView = '/dash-board-view';
  static const String activityView = '/activity-view';
  static const String paymentView = '/payment-view';
  static const String controlView = '/control-view';
  static const String profileView = '/profile-view';
  static const all = <String>{
    startupView,
    homeView,
    dashBoardView,
    activityView,
    paymentView,
    controlView,
    profileView,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.dashBoardView, page: DashBoardView),
    RouteDef(Routes.activityView, page: ActivityView),
    RouteDef(Routes.paymentView, page: PaymentView),
    RouteDef(Routes.controlView, page: ControlView),
    RouteDef(Routes.profileView, page: ProfileView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    StartupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    DashBoardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const DashBoardView(),
        settings: data,
      );
    },
    ActivityView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ActivityView(),
        settings: data,
      );
    },
    PaymentView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PaymentView(),
        settings: data,
      );
    },
    ControlView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ControlView(),
        settings: data,
      );
    },
    ProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ProfileView(),
        settings: data,
      );
    },
  };
}
