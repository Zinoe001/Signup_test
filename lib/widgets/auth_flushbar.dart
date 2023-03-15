import 'package:flutter/material.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:sign_up_app/core/utils/text.dart';

class AuthFlushbar {
  late BuildContext context;
  showError({required String title, required String message}) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
      titleText: AppText.heading3(
        title,
        color: Colors.white,
      ),
      messageText: AppText.body1(
        message,
        color: Colors.white,
      ),
    ).show(context);
  }

  showSuccessful({required String title, required String message}) {
    Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
      titleText: AppText.heading3(
        title,
        color: Colors.white,
      ),
      messageText: AppText.body1(
        message,
        color: Colors.white,
      ),
    ).show(context);
  }
}
