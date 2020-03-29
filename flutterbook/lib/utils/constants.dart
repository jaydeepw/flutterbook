import 'package:flutter/material.dart';

class Constants {
  /*
   * This flag can be used to speed up development. For instance hardcoding the UI
   * inputs to prefill it and just going to next step instead of manually filling the form
   * and increase the compile-debug time cycle
   */
  static const bool IS_DEVELOPING = true;
  static const String APP_NAME = "FlutterBook";

  static const String BASE_URL_STAGING = '';
  static const String BASE_URL_PRODUCTION = '';
  static const String BASE_URL = BASE_URL_PRODUCTION;
  static const String API_VERSION = '';

  static const Color DEFAULT_BG_COLOR = Color(0xff474747);

  static const String END_POINT_REQUEST_OTP = BASE_URL + API_VERSION + '/broker/send-otp';
}
