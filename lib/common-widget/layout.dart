/*
 * Created on Thu Apr 25 2024
 * Created by Tejas Surve
 *
 * Copyright (c) Tejas Surve
 */

import 'package:flutter/material.dart';

class SizeConfig {
  Device device = deviceList[Devices.iPhone14ProMax.name]!;
  double designWidthInPt = 375;
  double designHeightInPt = 812;
  bool userPointMeasurements = true;

  factory SizeConfig() {
    return _singleton;
  }

  SizeConfig._internal();

  static final SizeConfig _singleton = SizeConfig._internal();

  setDevice(Device device) {
    device = device;
  }

  setDesignWidthInPt(double designWidthInPt) {
    designWidthInPt = designWidthInPt;
  }

  setDesignHeightInPt(double designHeightInPt) {
    designHeightInPt = designHeightInPt;
  }
}

double rSize(
  BuildContext context,
  double size,
) {
  SizeConfig sizeConfig = SizeConfig();
  double standardLength = 0;

  standardLength = MediaQuery.of(context).size.width;

  double standardDesignLength = sizeConfig.designWidthInPt;
  double scaledSize = size * (standardLength / standardDesignLength);

  return scaledSize;
}

/// This function managing responsive size for different screens.
// double rSize(
//   BuildContext context,
//   double size,
// ) {
//   SizeConfig sizeConfig = SizeConfig();
//   Device selectedDevice = sizeConfig.device;
//   double screenWidth = MediaQuery.of(context).size.width;
//   double screenHeight = MediaQuery.of(context).size.height;
//   double scaleX = sizeConfig.userPointMeasurements
//       ? screenWidth / sizeConfig.designWidthInPt
//       : 1;
//   double scaleY = sizeConfig.userPointMeasurements
//       ? screenHeight / sizeConfig.designHeightInPt
//       : 1;
//   double standardScale = screenWidth > screenHeight ? scaleX : scaleY;

//   double standardLength =
//       screenWidth > screenHeight ? screenWidth : screenHeight;

//   double scaledSize =
//       (size * standardLength * standardScale) / selectedDevice.viewPort.height;

//   if (scaledSize / size < 0.95) {
//     return size * 0.95;
//   }

//   return scaledSize;
// }

Color darken(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

  return hslDark.toColor();
}

Color lighten(Color color, [double amount = .1]) {
  assert(amount >= 0 && amount <= 1);

  final hsl = HSLColor.fromColor(color);
  final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

  return hslLight.toColor();
}

int roundUpAbsolute(double number) {
  return number.isNegative ? number.floor() : number.ceil();
}

bool isRtl(BuildContext context) {
  final TextDirection currentDirection = Directionality.of(context);
  return currentDirection == TextDirection.rtl;
}

class Device {
  final Size viewPort;
  final String name;
  final double screenSize;
  Device({
    required this.viewPort,
    required this.name,
    required this.screenSize,
  });
}

enum Devices {
  iPhone14ProMax,
  iPadPro12,
  iPadPro11,
}

Map<String, Device> deviceList = {
  Devices.iPhone14ProMax.name: Device(
    name: 'iPhone 14 Pro Max',
    viewPort: const Size(430, 932),
    screenSize: 6.7,
  ),
  Devices.iPadPro12.name: Device(
    name: 'iPad Pro 12.9"',
    viewPort: const Size(1024, 1366),
    screenSize: 12.9,
  ),
  Devices.iPadPro11.name: Device(
    name: 'iPad Pro 11"',
    viewPort: const Size(834, 1194),
    screenSize: 11.0,
  ),
};
