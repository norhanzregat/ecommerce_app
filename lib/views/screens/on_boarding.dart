import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onboarding-controller.dart';
import 'package:untitled1/views/widget/onboarding/custom-slider.dart';
import 'package:untitled1/views/widget/onboarding/dot_controller.dart';
import '../widget/onboarding/custom_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Expanded(
                flex: 3,
                child: CustomSlider(),
              ),
              const SizedBox(height: 5),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const CustomDotController(),
                    Spacer(
                      flex: 2,
                    ),
                    const CustomButton(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
