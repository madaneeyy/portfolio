import 'dart:ui';

import 'package:awesome_portfolio/Widgets/blur_container.dart';
import 'package:awesome_portfolio/consts/data.dart';
import 'package:awesome_portfolio/providers/current_state.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: currentState.bgGradient,
            ),
          ),
          SvgPicture.asset(
            'assets/images/Cloudy_.svg',
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
                  Column(children: [
                    BlurContainer(
                      height: 345,
                      width: 247,
                    ),
                    const SizedBox(height: 20),
                    BlurContainer(
                      height: 245,
                      width: 247,
                    )
                  ]),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(
                        builder: (BuildContext context, _, __) {
                      return DeviceFrame(
                        device: currentState.currentDevice,
                        screen: const Center(
                          child: Text(
                            "Hello",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(width: 20),
                  Column(children: [
                    BlurContainer(
                        height: 345,
                        width: 247,
                        childG: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: List.generate(
                              colorPalettes.length,
                              (index) => CustomButton(
                                    onPressed: () {},
                                    animate: true,
                                    isThreeD: true,
                                    backgroundColor: colorPalettes[index].color,
                                    height: 45,
                                    width: 45,
                                    borderRadius: 100,
                                    shadowColor: Colors.white,
                                  )),
                        )),
                    SizedBox(height: 20),
                    BlurContainer(height: 245, width: 247)
                  ]),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                      devices.length,
                      (index) => Selector<CurrentState, DeviceInfo>(
                          selector: (BuildContext, provider) =>
                              provider.currentDevice,
                          builder: (BuildContext context, _, __) {
                            return CustomButton(
                              backgroundColor: Colors.black54,
                              animate: true,
                              height: 38,
                              width: 38,
                              borderRadius: 30,
                              pressed: currentState.currentDevice ==
                                      devices[index].device
                                  ? Pressed.pressed
                                  : Pressed.notPressed,
                              onPressed: () {
                                currentState.changeSelectedDevice(
                                    devices[index].device);
                              },
                              isThreeD: true,
                              shadowColor: Colors.white,
                              child: Icon(devices[index].icon,
                                  color: Colors.white),
                            );
                          })),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
