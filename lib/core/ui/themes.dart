import 'package:flutter/material.dart';
import 'package:very_good_template/core/config/colors.dart';

class AppTheme {
  static bool get isLightMode {
    try {
      return true;
    } catch (e) {
      return true;
    }
  }

  static Color get scaffoldBackgroundColor =>
      isLightMode ? const Color(0xFFF7F7F7) : const Color(0xFF1A1A1A);

  static Color get redErrorColor =>
      isLightMode ? const Color(0xFFAC0000) : const Color(0xFFAC0000);

  static Color get backgroundColor =>
      isLightMode ? const Color(0xFFFFFFFF) : const Color(0xFF2C2C2C);

  static Color get primaryTextColor =>
      isLightMode ? const Color(0xFF262626) : const Color(0xFFFFFFFF);

  static Color get secondaryTextColor =>
      isLightMode ? const Color(0xFFADADAD) : const Color(0xFF6D6D6D);

  static Color get whiteColor => const Color(0xFFFFFFFF);
  static Color get backColor => const Color(0xFF262626);

  static Color get fontcolor =>
      isLightMode ? const Color(0xFF1A1A1A) : const Color(0xFFF7F7F7);

  static ThemeData get getThemeData =>
      isLightMode ? _buildLightTheme() : _buildDarkTheme();

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      displayLarge: base.displayLarge!, //f-size 96
      displayMedium: base.displayMedium!, //f-size 60
      displaySmall: base.displaySmall!, //f-size 48
      headlineMedium: base.headlineMedium!, //f-size 34
      headlineSmall: base.headlineSmall!, //f-size 24
      titleLarge: base.titleLarge!.copyWith(
        fontWeight: FontWeight.bold,
      ), //f-size 20
      labelLarge: base.labelLarge!, //f-size 14
      bodySmall: base.bodySmall!, //f-size 12
      bodyLarge: base.bodyLarge!, //f-size 16
      bodyMedium: base.bodyMedium!, //f-size 14
      titleMedium: base.titleMedium!.copyWith(
        fontWeight: FontWeight.bold,
      ),
      //f-size 16
      titleSmall: base.titleSmall!, //f-size 14
      labelSmall: base.labelSmall!, //f-size 10
    );
  }

  static ThemeData _buildLightTheme() {
    final colorScheme = const ColorScheme.light().copyWith(
      primary: AppColors.kPrimaryColor,
      secondary: AppColors.kPrimaryLightColor,
    );
    final base = ThemeData.light();

    return base.copyWith(
      primaryColor: AppColors.kPrimaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      canvasColor: scaffoldBackgroundColor,
      buttonTheme: _buttonThemeData(colorScheme),
      dialogTheme: _dialogTheme(),
      cardTheme: _cardTheme(),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: colorScheme.copyWith(background: backgroundColor),
    );
  }

  static ThemeData _buildDarkTheme() {
    final colorScheme = const ColorScheme.dark().copyWith(
      primary: AppColors.kPrimaryColor,
      secondary: AppColors.kPrimaryLightColor,
    );
    final base = ThemeData.dark();

    return base.copyWith(
      primaryColor: AppColors.kPrimaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      canvasColor: scaffoldBackgroundColor,
      buttonTheme: _buttonThemeData(colorScheme),
      dialogTheme: _dialogTheme(),
      cardTheme: _cardTheme(),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      colorScheme: colorScheme.copyWith(background: backgroundColor),
    );
  }

  static ButtonThemeData _buttonThemeData(ColorScheme colorScheme) {
    return ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      colorScheme: colorScheme,
      textTheme: ButtonTextTheme.primary,
    );
  }

  static DialogTheme _dialogTheme() {
    return DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 0,
      backgroundColor: backgroundColor,
    );
  }

  static CardTheme _cardTheme() {
    return CardTheme(
      clipBehavior: Clip.antiAlias,
      color: backgroundColor,
      shadowColor: secondaryTextColor.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 8,
      margin: EdgeInsets.zero,
    );
  }

  static BoxDecoration get mapCardDecoration => BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.getThemeData.dividerColor,
            offset: const Offset(4, 4),
            blurRadius: 8,
          ),
        ],
      );
  static BoxDecoration get buttonDecoration => BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.getThemeData.dividerColor,
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
      );
  static BoxDecoration get searchBarDecoration => BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(38)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.getThemeData.dividerColor,
            blurRadius: 8,
            // offset: Offset(4, 4),
          ),
        ],
      );

  static BoxDecoration get boxDecoration => BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppTheme.getThemeData.dividerColor,
            //   offset: Offset(2, 2),
            blurRadius: 8,
          ),
        ],
      );
}

enum ThemeModeType {
  system,
  dark,
  light,
}
