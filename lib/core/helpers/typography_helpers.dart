import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:very_good_template/core/config/config_barrel.dart';

void setStatusBarTheme() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: AppColors.kPrimaryColor,
    ),
  );
}

double getStatusBarHeight(BuildContext context) =>
    MediaQuery.of(context).viewPadding.top;

double getContextHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double getBodyContentHeight(BuildContext context) =>
    getContextHeight(context) - (getStatusBarHeight(context) + 102);
