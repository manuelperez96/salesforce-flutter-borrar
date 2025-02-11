import 'package:example/constants.dart';
import 'package:flutter/material.dart';

Future<dynamic> customModalBottomSheet(
  BuildContext context, {
  required Widget child,
  bool isDismissible = true,
  double? height,
}) {
  return showModalBottomSheet(
    context: context,
    clipBehavior: Clip.hardEdge,
    isScrollControlled: true,
    isDismissible: isDismissible,
    enableDrag: isDismissible,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(defaultBorderRadius * 2),
        topRight: Radius.circular(defaultBorderRadius * 2),
      ),
    ),
    builder: (context) => SizedBox(
      height: height ?? MediaQuery.of(context).size.height * 0.75,
      child: child,
    ),
  );
}
