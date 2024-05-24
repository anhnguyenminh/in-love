import 'package:get/get.dart';
import 'package:flutter_in_love/common/salomon_bottom_navbar.dart';
import 'package:flutter_in_love/view/after_credit.dart';
import 'package:flutter_in_love/view/home_page.dart';
import 'package:flutter_in_love/view/on_boarding.dart';
import 'package:flutter_in_love/view/setting_page.dart';
import 'package:flutter_in_love/view/sign_in_page.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(name: _Paths.NAVBAR, page: () => SalomonNavigationBar()),
    GetPage(name: _Paths.ONBOARDING, page: () => OnBoardingPage()),
    GetPage(name: _Paths.SIGNIN, page: () => SignInPage()),
    GetPage(name: _Paths.HOME, page: () => HomePage()),
    GetPage(name: _Paths.SETTINGAPP, page: () => SettingAppPage()),
    GetPage(name: _Paths.AFTERCREDIT, page: () => AfterCreditPage()),
  ];
}
