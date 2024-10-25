import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onboarding-controller.dart';
import 'package:untitled1/core/constants/color.dart';
import 'package:untitled1/data/database/static/static.dart';

class CustomSlider extends GetView<OnBoardingControllerImp> {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  onBoardingList[i].title!,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 70),
                Image.asset(
                  onBoardingList[i].image!,
                  width: 300,
                  height: 250,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 40),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )),
              ],
            ));
  }
}
