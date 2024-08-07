import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppThemes {
  static ThemeData appLightTheme = ThemeData.light().copyWith(
    //scaffold color
    scaffoldBackgroundColor: Colors.grey[200],
    //!scaffold color

//primaryColor
    primaryColor: Colors.white,
//!primaryColor

    //input theme
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      outlineBorder:
          const BorderSide(style: BorderStyle.solid, color: Colors.black),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          30.r,
        ),
      ),
    ),
    //!</input theme>

//icontheme
    primaryIconTheme: const IconThemeData(color: Colors.green),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll(Colors.green),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.green),
    //!icontheme

    //bottom sheet Theme
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.transparent,
    ),
    //!bottom sheet Theme

//cardCOLOR
    cardColor: Colors.white,

//!cardCOLOR

    textTheme: TextTheme(
      // titleMedium: const TextStyle(color: Colors.black),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
          fontSize: 16.sp, fontWeight: FontWeight.w400, color: Colors.black45),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(color: Colors.white, fontSize: 18.sp),
      titleLarge: TextStyle(color: Colors.white, fontSize: 26.sp),
      titleSmall: const TextStyle(color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.grey[300]!,
    ),

    //appBartheme
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.green,
      ),
      //!appBartheme

      systemOverlayStyle: SystemUiOverlayStyle.dark,
      //actionbuttomtheme
      actionsIconTheme: IconThemeData(
        color: Colors.green,
      ),
      //!actionbuttomtheme
    ),
  );

  // static ThemeData appDarkTheme = ThemeData.dark().copyWith(
  //     inputDecorationTheme: InputDecorationTheme(
  //         outlineBorder:
  //             const BorderSide(style: BorderStyle.solid, color: Colors.black),
  //         fillColor: const Color.fromARGB(255, 49, 49, 49),
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(
  //             30.r,
  //           ),
  //         )),
  //     cardColor: Colors.white,
  //     textTheme: TextTheme(
  //       titleMedium: TextStyle(color: Colors.white),
  //       titleLarge: TextStyle(color: Colors.white),
  //       titleSmall: TextStyle(color: Colors.white),
  //       bodyMedium: TextStyle(
  //         color: Colors.white,
  //       ),
  //       bodySmall: TextStyle(
  //           fontSize: 18.sp, fontWeight: FontWeight.w500, color: Colors.white),
  //       bodyLarge: TextStyle(color: Colors.white),
  //       labelMedium: TextStyle(color: Colors.white),
  //     ),
  //     scaffoldBackgroundColor: const Color.fromARGB(255, 22, 19, 19),
  //     bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //       backgroundColor: Colors.black,
  //       selectedItemColor: Color.fromARGB(255, 49, 49, 49),
  //     ),
  //     primaryColor: Colors.black,
  //     appBarTheme: const AppBarTheme(
  //       backgroundColor: Colors.black,
  //       iconTheme: IconThemeData(
  //         color: Colors.white,
  //       ),
  //       systemOverlayStyle: SystemUiOverlayStyle.light,
  //       actionsIconTheme: IconThemeData(
  //         color: Colors.white,
  //       ),
  //     ),
  //     secondaryHeaderColor: Colors.white);
}
