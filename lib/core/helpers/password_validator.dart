// Validator class hold the RegExp for requested validation

class PasswordValidator {
  /// Checks if password has minLength
  static bool hasMinLength(String password, int minLength) {
    return password.length >= minLength ? true : false;
  }

  /// Checks if password length is Below Max Length
  static bool isBelowMaxLength(String password, int maxLength) {
    return password.length <= maxLength ? true : false;
  }

  /// Checks if password has at least numericCount numeric character matches
  static bool hasMinNumericChar(String password, int numericCount) {
    String pattern = '^(.*?[0-9]){' + numericCount.toString() + ',}';
    return password.contains(RegExp(pattern));
  }

  //Checks if password has at least specialCount special character matches
  static bool hasMinSpecialChar(String password, int specialCount) {
    String pattern =
        r"^(.*?[$&+,\:;/=?@#|'<>.^*()_%!-]){" + specialCount.toString() + ",}";
    return password.contains(RegExp(pattern));
  }
}
