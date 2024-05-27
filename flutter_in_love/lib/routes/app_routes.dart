part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const NAVBAR = _Paths.NAVBAR;
  static const ONBOARDING = _Paths.ONBOARDING;
  static const SIGNIN = _Paths.SIGNIN;
  static const HOME = _Paths.HOME;
  static const SETTINGAPP = _Paths.SETTINGAPP;
  static const AFTERCREDIT = _Paths.AFTERCREDIT;
  static const OURMEMORIES = _Paths.OURMEMORIES;
  static const IMAGESCOLLECTION = _Paths.IMAGESCOLLECTION;
  static const CHALLENGES = _Paths.CHALLENGES;
  static const PETCARE = _Paths.PETCARE;
  static const PARTNERINFO = _Paths.PARTNERINFO;
}

class _Paths {
  static const NAVBAR = "/";
  static const ONBOARDING = "/on_boarding";
  static const SIGNIN = "/signin";
  static const HOME = "/home";
  static const OURMEMORIES = "/our_memories";
  static const IMAGESCOLLECTION = "/images_collection";
  static const CHALLENGES = "/challenges";
  static const PETCARE = "/pet_care";
  static const PARTNERINFO = "/partner_infor";
  static const SETTINGAPP = "/setting_app";
  static const AFTERCREDIT = "/after_credit";
}
