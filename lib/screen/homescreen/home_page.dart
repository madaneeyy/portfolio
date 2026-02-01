import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: [Colors.blue, Colors.black45]),
            ),
          ),
          SvgPicture.asset(
            'assets/images/Cloudy.svg',
            height: size.height,
            width: size.width,
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height - 100,
                    child: DeviceFrame(
                      device: Devices.ios.iPhone13,
                      screen: const Center(
                        child: Text(
                          "Hello",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
