// import 'package:meters/models/user.dart';
import 'package:meters/ui/views/Startup/startup_view_model.dart';
import 'package:stacked/stacked.dart';

class DashBoardViewModel extends BaseViewModel {
 Future<String> get token => StartupViewModel().login();
}
