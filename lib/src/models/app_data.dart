import 'dart:ui';

import 'package:flutter/services.dart';

const String applicationTitle = 'My location';
const Color primaryColor = Color(0xff89ABE3);
const Color secondaryColor = Color(0xffFCF6F5);
const Color transparentColor = Color(0x00000000);

void setTransparentStatusBar() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: transparentColor,
    ),
  );
}

String convertKelvinToCelsius(double kelvinTemperature) {
  final int celsiusTemperature = (kelvinTemperature - 273.15).toInt();

  return '$celsiusTemperature °';
}
