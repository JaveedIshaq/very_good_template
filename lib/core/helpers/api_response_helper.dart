import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:very_good_template/core/config/app_exceptions.dart';
import 'package:very_good_template/core/config/extensions.dart';
import 'package:very_good_template/core/config/logger.dart';

dynamic apiResponseHelper({
  required http.Response response,
  required String className,
  required String apiUrl,
  required String requestValue,
}) async {
  // print log the response
  printLog(
    classFileName: className,
    logType: LoggerType.w,
    message:
        'url:$apiUrl\nreq:$requestValue\nres:${response.statusCode}:${response.body}',
  );
  //
  'url:$apiUrl\nreq:$requestValue\nres:${response.statusCode}:${response.body}'
      .log();
  'url:$apiUrl\nreq:$requestValue\nres:${response.statusCode}:${response.body}'
      .log();
  'url:$apiUrl\nreq:$requestValue\nres:${response.statusCode}:${response.body}'
      .log();
  switch (response.statusCode) {
    case 200:
      try {
        return json.decode(response.body);
      } catch (exception, stackTrace) {
        await Sentry.captureException(exception, stackTrace: stackTrace);
        '============ inside jsonDecodeException'.log();
        throw JsonDecodeException();
      }
    default:
      final decodedResponse = json.decode(response.body);
      await Sentry.captureMessage(response.body);
      throw HttpException(
        '${decodedResponse['message'] ?? ""} ${decodedResponse['details'] ?? ""} : ${response.statusCode}',
      );
  }
}
