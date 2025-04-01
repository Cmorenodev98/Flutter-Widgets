import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.blueAccent,
  Colors.lightBlue,
  Colors.lightBlueAccent,
  Colors.white,
  Colors.black,
  Colors.pink,
  Colors.purple,
  Colors.purpleAccent,
  Colors.deepPurple,
  Colors.deepPurpleAccent
];  

class AppTheme {

  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }):assert( selectedColor >= 0, 'Selected color must be greatter than 0'),
     assert(selectedColor < colorList.length, 'Selected color must be less or equal than ${ colorList.length -1 }');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: AppBarTheme(
      centerTitle: true,
    )
  );

}