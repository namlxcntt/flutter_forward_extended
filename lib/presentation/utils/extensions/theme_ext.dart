import 'package:flutter/material.dart';


extension ThemeExt on BuildContext{
  TextTheme themeText(){
    return Theme.of(this).textTheme;
  }
}

const defaultShadow =  [
  // BoxShadow(color: colorBlurShadow, spreadRadius: 0, blurRadius: sizeNormal),
];
