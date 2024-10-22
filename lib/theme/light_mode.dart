import "package:flutter/material.dart";

ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light(
    surface: Color(0xFFF8F8F8), // A light grey to match Irembo's clean surfaces
    onSurface: Color(0xFF333333), // A darker shade for text and icons
    primary: Color(0xFF005BAC), // Irembo's blue
    secondary: Color(0xFF008CBA), // Lighter blue for accents
    tertiary: Color(0xFF8CC63F), // Green for positive actions
    outline: Color(0xFF707070), // A neutral grey for outlines
  ),
);
