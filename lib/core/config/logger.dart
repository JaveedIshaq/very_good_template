import 'package:logger/logger.dart';
import 'package:very_good_template/core/config/app_constants.dart';
import 'package:very_good_template/core/config/extensions.dart';

Logger getLogger(String className) {
  return Logger(printer: SimpleLogPrinter(className));
}

class SimpleLogPrinter extends LogPrinter {
  SimpleLogPrinter(this.className);
  final String className;

  @override
  List<String> log(LogEvent event) {
    final color = PrettyPrinter.levelColors[event.level]!;
    final emoji = PrettyPrinter.levelEmojis[event.level]!;
    color('$emoji$emoji$emoji [$className]: ${event.message}').log();
    return [];
    //return [color('$emoji$emoji$emoji [$className]: ${event.message}')];
  }
}

// in class simple import this class
// and write ... Logger log = getLogger("ClassName", isDebugLogAllowed);
// log.v("This is a verbose");
// log.d("this is a debug message");
// log.i("This is info, should be used for public calls");
// log.w("This might become problem: a warning message");
// log.e("This is the error message");

enum LoggerType { v, d, i, w, e }

void printLog({
  required String classFileName,
  required LoggerType logType,
  required String message,
}) {
  if (isDebugLogEnabled) {
    final log = getLogger(classFileName);

    switch (logType) {
      case LoggerType.v:
        log.v(message);
        break;
      case LoggerType.d:
        log.d(message);
        break;
      case LoggerType.i:
        log.i(message);
        break;
      case LoggerType.w:
        log.w(message);
        break;
      case LoggerType.e:
        log.e(message);
        break;
    }
  }
}
