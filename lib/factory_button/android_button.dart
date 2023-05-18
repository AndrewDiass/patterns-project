import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'i_action_button.dart';

class WDAndroidButton extends StatelessWidget {
  final ActionsButtonModel action;
  const WDAndroidButton({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: action.child,
      onPressed: () => action.onPress,
    );
  }
}
