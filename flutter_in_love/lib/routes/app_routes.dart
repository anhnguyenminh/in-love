part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const NAVBAR = _Paths.NAVBAR;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const SIGNIN = _Paths.SIGNIN;
  static const HOME = _Paths.HOME;
  static const SETTINGAPP = _Paths.SETTINGAPP;
  static const AFTERCREDIT = _Paths.AFTERCREDIT;
}

class _Paths {
  static const NAVBAR = "/";
  static const ONBOARDING = "/on_boarding";
  static const SIGNIN = "/signin";
  static const HOME = "/home";
  static const SETTINGAPP = "/setting_app";
  static const AFTERCREDIT = "/after_credit";
}
