import 'package:flutter/material.dart';

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    fontFamily: "SFPro",
    disabledColor: const Color.fromARGB(182, 106, 75, 115),
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 106, 26, 227),
      brightness: Brightness.light,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 203, 169, 255),
        foregroundColor: const Color.fromARGB(255, 11, 1, 26),
        iconColor: const Color.fromARGB(255, 11, 1, 26),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        side: WidgetStateBorderSide.resolveWith(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return const BorderSide(
                color: Color.fromARGB(78, 81, 81, 81),
              );
            }
            return const BorderSide(
              color: Color.fromARGB(255, 151, 133, 192),
            );
          },
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: "SFPro",
    scaffoldBackgroundColor: Colors.black,
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: Color.fromARGB(255, 36, 36, 36),
      contentTextStyle: TextStyle(color: Colors.grey),
      actionTextColor: Color.fromARGB(255, 228, 215, 255),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 196, 169, 255),
      brightness: Brightness.dark,
    ),
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: WidgetStateProperty.all(Colors.grey[500]),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 203, 169, 255),
        foregroundColor: const Color.fromARGB(255, 11, 1, 26),
        iconColor: const Color.fromARGB(255, 11, 1, 26),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        side: WidgetStateBorderSide.resolveWith(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.disabled)) {
              return const BorderSide(
                color: Color.fromARGB(255, 44, 44, 44),
              );
            }
            return const BorderSide(
              color: Color.fromARGB(159, 175, 157, 201),
            );
          },
        ),
      ),
    ),
  );
}
