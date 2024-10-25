import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/onboarding-controller.dart';
import '../../../core/constants/color.dart';

class CustomButton extends GetView<OnBoardingControllerImp> {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 35),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 13),
        onPressed: () {
          controller.next();
        },
        child: Text(
          "Continue",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        color: ColorsApp.primarycolor,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
