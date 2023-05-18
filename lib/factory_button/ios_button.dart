import 'package:flutter/cupertino.dart';

import 'i_action_button.dart';

class WDiOSButton extends StatelessWidget {
  final ActionsButtonModel action;
  const WDiOSButton({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: action.child,
      onPressed: () => action.onPress,
    );
  }
}
