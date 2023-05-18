import 'dart:io';

import 'package:flutter/material.dart';
import 'package:patterns_project/factory_button/android_button.dart';
import 'package:patterns_project/factory_button/ios_button.dart';

import 'i_action_button.dart';

class WDButtonFactory {
  static Widget createWDButton({required ActionsButtonModel action}) {
    if (Platform.isIOS) {
      return WDiOSButton(action: action);
    } else if (Platform.isAndroid) {
      return WDAndroidButton(action: action);
    } else {
      return WDiOSButton(action: action);
    }
  }
}
