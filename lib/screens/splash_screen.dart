import 'package:aplikasikuu/screens/get_started_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const Color greyColor = Color.fromARGB(255, 37, 37, 39);

  @override
  void initState() {
    super.initState();
    _navigationtogetstarted();
  }

  _navigationtogetstarted() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GetStarted()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/images/logo/logo.png',
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: const Text(
                'Catatan Keunganku',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
