import 'package:flutter/material.dart';

class AppTheme{
static final ThemeData lightTheme = ThemeData.light().copyWith(

  //elevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
         backgroundColor: Colors.blue[200],
         
          shape: const StadiumBorder(),
          elevation: 5
        )
      )

);
      
}