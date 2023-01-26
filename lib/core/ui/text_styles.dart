import 'package:flutter/material.dart';
import 'package:very_good_template/core/ui/themes.dart';

class TextStyles {
  TextStyles(this.context);
  final BuildContext context;

  TextStyle getTitleStyle() {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
          fontSize: 24,
          color: AppTheme.primaryTextColor,
        );
  }

  TextStyle getDescriptionStyle() {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: AppTheme.secondaryTextColor,
        );
  }

  TextStyle getRegularStyle() {
    return Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: 16,
          color: AppTheme.primaryTextColor,
        );
  }

  TextStyle getBoldStyle() {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
          fontSize: 14,
          color: AppTheme.primaryTextColor,
        );
  }

  ///
  static InputDecoration inputDecorationSearch(
    BuildContext context,
    String hintText,
  ) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Theme.of(context).hintColor),
      border: InputBorder.none,
      isDense: true,
    );
  }
}
