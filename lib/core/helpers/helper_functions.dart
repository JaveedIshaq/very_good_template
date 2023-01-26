import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:very_good_template/core/config/config_barrel.dart';

/// get today date as 2013-04-20
String getFormattedDateString(String date) {
  var formatted = '';

  try {
    final received = DateTime.parse(date).toLocal();

    final formatter = DateFormat('MMMM dd, yyyy, kk:mm');
    formatted = formatter.format(received);
  } on Exception catch (e) {
    '$e'.log();
  }

  return formatted;
}

/// get today date as 07/17/2022
String getFormattedDateOnlyString(String date) {
  final received = DateTime.parse(date).toLocal();

  final formatter = DateFormat('mm/dd/yyyy');
  final formatted = formatter.format(received);

  return formatted;
}

showNoInternetSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      duration: Duration(seconds: 1),
      backgroundColor: AppColors.kPrimaryLightColor,
      content: Text('Internet is Not Connected'),
    ),
  );
}
