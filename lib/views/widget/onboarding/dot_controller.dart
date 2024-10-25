import 'package:flutter/material.dart';
import 'package:untitled1/controller/onboarding-controller.dart';
import 'package:untitled1/core/constants/color.dart';
import 'package:untitled1/data/database/static/static.dart';
import 'package:get/get.dart';

class CustomDotController extends StatelessWidget {
  const CustomDotController({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder <OnBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onBoardingList.length,
                (index) => AnimatedContainer(
                  margin: EdgeInsets.only(right: 5),
                  duration: const Duration(milliseconds: 900),
                  width: controller.currentPage == index ? 20 : 5,
                  height: 6,
                  decoration: BoxDecoration(
                    color: ColorsApp.primarycolor,
                  //  shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ));
  }
}
