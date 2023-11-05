import 'package:firstporject/pages/edit_profile_page.dart';
import 'package:firstporject/pages/home_page.dart';
import 'package:firstporject/pages/login_page.dart';
import 'package:firstporject/pages/main_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile': (context) => EditProfilePage(),
  };
  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
}
