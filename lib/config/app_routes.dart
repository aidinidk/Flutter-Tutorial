import 'package:firstporject/pages/edit_profile_page.dart';
import 'package:firstporject/pages/home_page.dart';
import 'package:firstporject/pages/login_page.dart';
import 'package:firstporject/pages/main_page.dart';
import 'package:firstporject/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editProfile: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';
}
