import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors_constant.dart';

class ThemeSalubre {
  principal() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: ColorsConstant.strongBlue,
        centerTitle: true,
        toolbarTextStyle: GoogleFonts.montserrat(),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: ColorsConstant.strongBlue,
        iconSize: 30,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(65),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          primary: ColorsConstant.strongBlue,
        ),
      ),
      backgroundColor: ColorsConstant.gray,
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: ColorsConstant.blue),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(color: ColorsConstant.blue),
        ),
        labelStyle: GoogleFonts.montserrat(),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(ColorsConstant.darkBlue),
        side: const BorderSide(
          color: ColorsConstant.darkBlue,
          width: 2,
        ),
      ),
    );
  }
}
