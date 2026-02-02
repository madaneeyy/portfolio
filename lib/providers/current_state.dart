import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone13;
  Gradient bgGradient = const LinearGradient(
    colors: [Color.fromARGB(255, 255, 136, 0), Color.fromARGB(255, 187, 48, 5)],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );
  void changeSelectedDevice(DeviceInfo device) {
    currentDevice = device;
    notifyListeners();
  }
}
