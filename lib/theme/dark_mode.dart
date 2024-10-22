import "package:flutter/material.dart";

ThemeData darkMode = ThemeData(
    colorScheme: const ColorScheme.dark(
  surface: Color(0xFF1C1C1E), // A dark grey for surfaces
  onSurface: Color(0xFFF8F8F8), // Light text color
  primary: Color(0xFF005BAC), // Irembo's blue for primary elements
  secondary: Color(0xFF008CBA), // Lighter blue for accents
  tertiary: Color(0xFF8CC63F), // Green for positive actions
  outline: Color(0xFF5A5A5A), // A darker neutral grey for outlines
));
