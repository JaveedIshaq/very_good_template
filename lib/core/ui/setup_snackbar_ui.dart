import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:very_good_template/core/config/colors.dart';
import 'package:very_good_template/core/config/locator.dart';
import 'package:very_good_template/core/enums/snackbar_type.dart';

final service = locator<SnackbarService>();

void setupSnackbarUi() {
  // Registers a config to be used when calling showSnackbar
  service
    ..registerSnackbarConfig(
      SnackbarConfig(
        backgroundColor: AppColors.kPrimaryColor,
        mainButtonTextColor: Colors.black,
      ),
    )
    ..registerCustomSnackbarConfig(
      variant: SnackbarType.blueAndYellow,
      config: SnackbarConfig(
        snackStyle: SnackStyle.GROUNDED,
        backgroundColor: Colors.blueAccent,
        textColor: Colors.yellow,
        borderRadius: 1,
        dismissDirection: DismissDirection.horizontal,
      ),
    )
    ..registerCustomSnackbarConfig(
      variant: SnackbarType.greenAndRed,
      config: SnackbarConfig(
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        titleColor: Colors.green,
        messageColor: Colors.red,
        borderRadius: 1,
      ),
    );
}
