import 'package:meters/app/locator.dart';
import 'package:meters/app/router.gr.dart';
import 'package:meters/services/api.dart';
// import 'package:meters/services/shared_preferences_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  static String token = '';
  // final _sharedPreferences = locator<SharedPreferencesService>();
  final _navigationService = locator<NavigationService>();
  final _apiService = locator<Api>();


  Future initialise() async {
    await _navigationService.replaceWith(Routes.homeView);
  }

  Future<String> login() async {
    var tok = await _apiService.postLoginUser();
    token = (tok != null ?? tok.toString());
    return token;
  }
}
