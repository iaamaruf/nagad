import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context, Widget contentWidget) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return contentWidget;
    },
  );
}