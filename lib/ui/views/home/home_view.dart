import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:meters/ui/constants/colors.dart';
import 'package:meters/ui/views/account/profile_view.dart';
import 'package:meters/ui/views/activity/activity_view.dart';
import 'package:meters/ui/views/controls/control_view.dart';
import 'package:meters/ui/views/dashboard/dashboard_view.dart';
import 'package:meters/ui/views/payment/payment_view.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 1500),
          reverse: model.reverse,
          transitionBuilder: (
            Widget child,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return SharedAxisTransition(
                child: child,
                animation: animation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
                fillColor: kcbackgroundColor,);
          },
          child: getViewForIndex(model.currentIndex),
        ),
        // backgroundColor: BackgroundColor,
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white30,
            elevation: 50.0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kcbackgroundColor,
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                  title: Text('DashBoard'), icon: Icon(Icons.list)),
              BottomNavigationBarItem(
                  title: Text('Controls'), icon: Icon(Icons.swap_horiz)),
              BottomNavigationBarItem(
                  title: Text('Payment'), icon: Icon(Icons.payment)),
              BottomNavigationBarItem(
                  title: Text('Activities'), icon: Icon(Icons.trending_up)),
              BottomNavigationBarItem(
                  title: Text('profile'), icon: Icon(Icons.person)),
            ]),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return DashBoardView();
      case 1:
        return ControlView();
      case 2:
        return PaymentView();
      case 3:
        return ActivityView();
      case 4:
        return ProfileView();
      default:
        return DashBoardView();
    }
  }
}
