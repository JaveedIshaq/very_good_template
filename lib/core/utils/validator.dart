class Validator {
  // email Validation
  static const String _pattern =
      "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$";

  static final RegExp _regex = RegExp(_pattern);

  static bool validateEmail(String value) {
    return _regex.hasMatch(value);
  }

  // password Validation
  static const String _passwordValidationPattern = r'()';
  static final RegExp _regexPassword = RegExp(_passwordValidationPattern);

  static bool validatePassword(String value) {
    return _regexPassword.hasMatch(value);
  }

  static const String _phonNumberRegex = r'(^(?:[+0]9)?[0-9]{10,12}$)';

  static final RegExp _regexPhone = RegExp(_phonNumberRegex);

  static bool validatePhone(String value) {
    return _regexPhone.hasMatch(value);
  }
}
