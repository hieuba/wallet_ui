import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wallet_ui/utils/colors.dart';

class Themes {
  static ThemeData lightTheme = ThemeData(
      fontFamily: "SF-Pro-Text-Regular",
      primarySwatch: Colors.blue,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
          titleTextStyle:
              const TextStyle(color: kBlackColor, fontWeight: FontWeight.w600),
          iconTheme: const IconThemeData(color: kBlackColor),
          backgroundColor: Colors.grey.shade50,
          elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
      ),
      cardColor: Colors.grey.shade200,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: Colors.red),
      textTheme: TextTheme(
        displayLarge: TextStyle(
          letterSpacing: .36,
          fontSize: 27.sp,
          color: Colors.black,
          fontWeight: FontWeight.w700,
          height: 1.18,
        ),
        displayMedium: TextStyle(
            height: 1.27,
            fontSize: 22.sp,
            color: Colors.black,
            fontWeight: FontWeight.w700),
        displaySmall: const TextStyle(
            height: 1.26,
            fontSize: 19,
            color: Colors.black,
            fontWeight: FontWeight.w600),
        headlineLarge: TextStyle(
          color: kBlackColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
          height: 1.41,
        ),
        headlineMedium: TextStyle(
          color: kBlackColor,
          fontSize: 17.sp,
          fontWeight: FontWeight.w400,
          height: 1.41,
        ),
        headlineSmall: TextStyle(
            height: 1.33,
            color: kGrayColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w400),

        // titleLarge: const TextStyle(
        //     color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
        // titleMedium: const TextStyle(
        //     color: Colors.black, fontSize: 17, fontWeight: FontWeight.w500),
        // titleSmall: const TextStyle(
        //     color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        // bodyLarge: TextStyle(
        //     color: Colors.grey.shade700,
        //     fontSize: 16,
        //     fontWeight: FontWeight.w400),
        // bodyMedium: TextStyle(
        //     color: Colors.grey.shade600,
        //     fontSize: 14,
        //     fontWeight: FontWeight.w400),
        // labelLarge: const TextStyle(
        //     color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        // bodySmall: TextStyle(
        //     color: Colors.grey.shade800,
        //     fontSize: 12,
        //     fontWeight: FontWeight.w400),
        // labelSmall: TextStyle(
        //     color: Colors.grey.shade700,
        //     fontSize: 10,
        //     fontWeight: FontWeight.w400,
        //     letterSpacing: -0.5)
      ));

  static ThemeData darkTheme = ThemeData(
    // fontFamily: "Open Sans",
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.grey.shade50,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade900,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.white),
    ),
    bottomAppBarColor: Colors.grey.shade800,
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        hintStyle: const TextStyle(
          fontSize: 14,
        )),
    cardColor: Colors.grey.shade700,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: Colors.white),
    textTheme: TextTheme(
        headline1: TextStyle(
            letterSpacing: -1.5,
            fontSize: 48,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline2: TextStyle(
            letterSpacing: -1.0,
            fontSize: 40,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline3: TextStyle(
            letterSpacing: -1.0,
            fontSize: 32,
            color: Colors.grey.shade50,
            fontWeight: FontWeight.bold),
        headline4: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 28,
            fontWeight: FontWeight.w600),
        headline5: TextStyle(
            letterSpacing: -1.0,
            color: Colors.grey.shade50,
            fontSize: 24,
            fontWeight: FontWeight.w500),
        headline6: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 22,
            fontWeight: FontWeight.w500),
        subtitle1: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 17,
            fontWeight: FontWeight.w500),
        subtitle2: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        bodyText1: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 16,
            fontWeight: FontWeight.w400),
        bodyText2: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 14,
            fontWeight: FontWeight.w400),
        button: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
        caption: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 12,
            fontWeight: FontWeight.w500),
        overline: TextStyle(
            color: Colors.grey.shade50,
            fontSize: 10,
            fontWeight: FontWeight.w400)),
  );
}
