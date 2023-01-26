class AppException implements Exception {
  AppException([this._message, this._prefix]);

  final dynamic _message;
  final dynamic _prefix;

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

/// Thrown if an exception occurs while making an `http` request.
class HttpException extends AppException {
  HttpException([String? message]) : super(message, '');
}

class HttpRequestFailure extends AppException {
  HttpRequestFailure([String? message]) : super(message, '');
}

class BadRequestException extends AppException {
  BadRequestException([dynamic message]) : super(message, 'Invalid Request: ');
}

class UnauthorizedException extends AppException {
  UnauthorizedException([dynamic message]) : super(message, 'Unauthorised: ');
}

class InvalidInputException extends AppException {
  InvalidInputException([dynamic message]) : super(message, 'Invalid Input: ');
}

/// Thrown when an error occurs while decoding the response body.
class JsonDecodeException extends AppException {
  JsonDecodeException([dynamic message])
      : super(message, 'Jsondecode Exception: ');
}

/// Thrown when an error occurs while deserializing the response body.
class JsonDeserializationException extends AppException {
  JsonDeserializationException([dynamic message])
      : super(message, 'JsonDeserializationException: ');
}

class ErrorEmptyResponse extends AppException {
  ErrorEmptyResponse([dynamic message])
      : super(message, 'ErrorEmptyResponse: ');
}
