import 'package:flutter/material.dart';
import 'package:mangatek/core/theme/colors.helper.dart';

@immutable
class ThemeHelper {
  const ThemeHelper._();

  static ThemeData theme = ThemeData(
    useMaterial3: true,
    colorScheme: _colorScheme,
  );

  static final ColorScheme _colorScheme = ColorScheme.fromSeed(
    seedColor: ColorsHelper.primary,
    secondary: ColorsHelper.secondary,
    secondaryContainer: ColorsHelper.secondary,
    background: ColorsHelper.background,
    surface: ColorsHelper.surface,
    error: ColorsHelper.error,
    onPrimary: ColorsHelper.white,
    onSecondary: ColorsHelper.white,
    onBackground: ColorsHelper.white,
    onSurface: ColorsHelper.white,
    onError: ColorsHelper.white,
  );
}
