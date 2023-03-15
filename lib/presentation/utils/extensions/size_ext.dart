import 'package:flutter/material.dart';

extension GetHeightX on BuildContext {
  double getHeight() {
    return MediaQuery.of(this).size.height;
  }

  double getWidth() {
    return MediaQuery.of(this).size.width;
  }
}

///Size primary
const sizeMedium = 16.0;
const sizeNormal = 12.0;
const sizeSmall = 8.0;
const sizeLargeSmall = 20.0;
const sizeLargeNormal = 24.0;
const sizeLargeMedium = 32.0;
const sizeMediumIcon = 40.0;
const sizeLargeIcon = 50.0;
const blueRadius = 25.0;
const sizeItemDashBoard = 100.0;
const sizeRectangleDetailJob = 145.0;
const marginRectangleDetailJob = 71.0;
const heightDivider = 1.0;

const twoValue = 2;
const oneValue = 1;
const zero = 0.0;
