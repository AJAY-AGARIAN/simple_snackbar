import 'package:flutter/material.dart';

enum SnackBarType { error, info, warning, success }

SnackBar simpleSnackBar({required BuildContext buildContext,
  required String messageText,
  required SnackBarType snackBarType,
  Color backgroundColor = Colors.white,
  Color textColor = Colors.black,
  bool displayDismiss = false}) {
  return SnackBar(
    behavior: SnackBarBehavior.floating,
    backgroundColor: backgroundColor,
    action: SnackBarAction(
      label: displayDismiss ? 'Dismiss' : "",
      disabledTextColor: Colors.white,
      textColor: Colors.green,
      onPressed: () {
        if (!displayDismiss) return;
        ScaffoldMessenger.of(buildContext).hideCurrentSnackBar();
      },
    ),
    content: Row(
      children: [
        _getIcon(type: snackBarType),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: Text(
            messageText,
            maxLines: 4,
            style: TextStyle(color: textColor),
          ),
        ),
      ],
    ),
  );
}

Widget _getIcon({required SnackBarType type}) {
  Icon icon;
  switch (type) {
    case SnackBarType.error:
      icon = const Icon(
        Icons.error,
        color: Colors.redAccent,
      );
      break;
    case SnackBarType.warning:
      icon = const Icon(
        Icons.warning,
        color: Colors.yellow,
      );
      break;
    case SnackBarType.info:
      icon = const Icon(
        Icons.info,
        color: Colors.lightBlue,
      );
      break;
    case SnackBarType.success:
      icon = const Icon(
        Icons.done,
        color: Colors.green,
      );
      break;
  }
  return icon;
}
