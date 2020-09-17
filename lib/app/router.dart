import 'package:auto_route/auto_route_annotations.dart';
import 'package:meters/ui/views/Startup/startup_view.dart';
import 'package:meters/ui/views/activity/activity_view.dart';
import 'package:meters/ui/views/dashboard/dashboard_view.dart';
import 'package:meters/ui/views/home/home_view.dart';
import 'package:meters/ui/views/account/profile_view.dart';
import 'package:meters/ui/views/controls/control_view.dart';
import 'package:meters/ui/views/payment/payment_view.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
  MaterialRoute(page: StartupView, initial: true),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: DashBoardView),
  MaterialRoute(page: ActivityView),
  MaterialRoute(page: PaymentView),
  MaterialRoute(page: ControlView),
  MaterialRoute(page: ProfileView)
])
class $Router {}