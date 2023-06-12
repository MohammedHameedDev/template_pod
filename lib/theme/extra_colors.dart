import 'package:flutter/material.dart';

class ExtraColors extends ThemeExtension<ExtraColors> {
  final Color success;
  final Color onSuccess;

  const ExtraColors({
    required this.success,
    required this.onSuccess,
  });

  @override
  ThemeExtension<ExtraColors> copyWith({
    Color? success,
    Color? onSuccess,
  }) {
    return ExtraColors(
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
    );
  }

  @override
  ThemeExtension<ExtraColors> lerp(
      covariant ThemeExtension<ExtraColors>? other, double t) {
    if (other is! ExtraColors) return this;

    return ExtraColors(
      success: Color.lerp(success, other.success, t)!,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t)!,
    );
  }
}

extension ExtraColorsX on ThemeData {
  ExtraColors get extraColors => extension<ExtraColors>()!;
}
