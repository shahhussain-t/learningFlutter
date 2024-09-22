import 'package:flutter/material.dart';

class SizeConfig {
  // Define base dimensions similar to your design (e.g., 414x896 for iPhone X)
  static const double baseWidth = 414.0;
  static const double baseHeight = 896.0;

  static double screenWidth = 0;
  static double screenHeight = 0;
  static double pixelRatio = 0;

  SizeConfig(int i);

  // Initialization with MediaQuery context
  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    pixelRatio = MediaQuery.of(context).devicePixelRatio;
  }

  // Normalize based on width or height
  static double normalize(double size, {String based = 'width'}) {
    double newSize;
    if (based == 'width') {
      newSize = size * (screenWidth / baseWidth);
    } else {
      newSize = size * (screenHeight / baseHeight);
    }
    return roundToNearestPixel(newSize);
  }

  // Normalize width
  static double normalizeWidth(double size) {
    return normalize(size, based: 'width');
  }

  // Normalize height
  static double normalizeHeight(double size) {
    return normalize(size, based: 'height');
  }

  // Normalize font size
  static double normalizeFont(double size) {
    return normalize(size, based: 'height'); // Font usually scales with height
  }

  // Normalize vertical padding/margin (Y-axis)
  static double pixelSizeY(double size) {
    return normalize(size, based: 'height');
  }

  // Normalize horizontal padding/margin (X-axis)
  static double pixelSizeX(double size) {
    return normalize(size, based: 'width');
  }

  // Helper method to round to nearest pixel using pixelRatio
  static double roundToNearestPixel(double value) {
    return (value * pixelRatio).round() / pixelRatio;
  }
}
