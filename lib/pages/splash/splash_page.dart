import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:routiner/pages/Onboarding/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6B73FF),
              Color(0xFF000DFF),
            ],
          ),
        ),
        child: Stack(
          children: [
            // Bottom right SVG image with blur effect
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: ClipRRect(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/splash/gradient_below.svg',
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Top left SVG image with blur effect
            Positioned(
              top: 0,
              left: 0,
              child: ClipRRect(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/splash/gradient1.svg',
                    ),
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 30, sigmaY: 50),
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Center SVG image
            Positioned.fill(
              child: Center(
                child: SvgPicture.asset(
                  'assets/splash/Circle BG.svg',
                ),
              ),
            ),
            // Company logo and name in the center
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/splash/logo.svg',
                    width: 74.w,
                    height: 74.h,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    'Routiner',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
