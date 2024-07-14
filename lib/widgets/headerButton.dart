import 'package:flutter/material.dart';

Widget headerButton({
  @required buttonText,
  @required ButtonIcon,
  required Function() buttonAction,
  required Color buttonColor,
  required IconData buttonIcon,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    icon: Icon(
      ButtonIcon,
      color: buttonColor,
    ),
    label: Text(buttonText),
  );
}
