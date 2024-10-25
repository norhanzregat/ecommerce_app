import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Text("Login"),
      ),
    );
  }
}
