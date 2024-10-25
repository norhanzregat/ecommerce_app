import 'package:flutter/material.dart';
import 'package:untitled1/auth/login.dart';
import 'package:untitled1/core/constants/rotesnname.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.login: (cotext) => const LoginPage(),
};
