import 'package:awesome_portfolio/models/color_model.dart';
import 'package:awesome_portfolio/models/device_model.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.onePlus8Pro, icon: Icons.phone_android),
  DeviceModel(device: Devices.ios.iPhone13, icon: Icons.apple),
  DeviceModel(device: Devices.ios.iPad, icon: Icons.tablet_mac),
];
List<ColorModel> colorPalettes = [
  ColorModel(
      svgPath: 'assets/images/CloudyRed.svg',
      gradient: LinearGradient(
        colors: [Colors.yellowAccent, Colors.deepOrange.shade700],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      color: Colors.yellowAccent),
  ColorModel(
      svgPath: 'assets/images/Cloudy_.svg',
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 255, 0, 242),
          Color.fromARGB(255, 205, 0, 220)
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      color: const Color.fromARGB(255, 255, 0, 242)),
  ColorModel(
      svgPath: 'assets/images/Cloudy_.svg',
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 176, 1, 1),
          Color.fromARGB(255, 255, 94, 94)
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      color: const Color.fromARGB(255, 255, 0, 0)),
  ColorModel(
      svgPath: 'assets/images/Cloudy_.svg',
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 136, 176, 6),
          Color.fromARGB(255, 25, 230, 56)
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      color: const Color.fromARGB(255, 17, 255, 0)),
  ColorModel(
      svgPath: 'assets/images/Cloudy_.svg',
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 176, 125, 6),
          Color.fromARGB(255, 230, 151, 25)
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      color: const Color.fromARGB(255, 96, 58, 1)),
  ColorModel(
      svgPath: 'assets/images/Cloudy_.svg',
      gradient: const LinearGradient(
        colors: [
          Color.fromARGB(255, 176, 6, 68),
          Color.fromARGB(162, 141, 223, 7)
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      ),
      color: const Color.fromARGB(255, 145, 0, 27)),
];
