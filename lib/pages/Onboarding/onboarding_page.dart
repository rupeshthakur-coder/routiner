import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const <Widget>[
            OnboardingScreen(
              imagePath: 'assets/onboarding/onboarding1.png',
              title: 'Create',
              secondTitle: 'Good Habits',
              subtitle: 'Change your life by slowly adding new healthy habits and sticking to them.',
              currentIndex: 0,
            ),
            OnboardingScreen(
              imagePath: 'assets/onboarding/onboarding2.png',
              title: 'Track ',
              secondTitle: 'Your Progress',
              subtitle: 'Everyday you become one step closer to your goal. Don\'t give up!',
              currentIndex: 1,
            ),
            OnboardingScreen(
              imagePath: 'assets/onboarding/onboarding3.png',
              title: 'Stay Together',
              secondTitle: 'and Strong',
              subtitle: 'Find friends to discuss common topics. Complete challenges together.',
              currentIndex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String secondTitle;
  final String subtitle;
  final int currentIndex;

  const OnboardingScreen({
    super.key,
    required this.imagePath,
    required this.title,
    required this.secondTitle,
    required this.subtitle,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: <Widget>[
          60.verticalSpace,
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Image.asset(
                imagePath,
                height: 300.h,
                width: 350.w,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  secondTitle,
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0.w),
                  width: currentIndex == index ? 8.0.w : 8.0.w,
                  height: currentIndex == index ? 8.0.h : 8.0.h,
                  decoration: BoxDecoration(
                    color: currentIndex == index ? Colors.white : Colors.lightBlue,
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0.w),
            child: Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle email login
                  },
                  icon: const Icon(Icons.email),
                  label: const Text('Continue with E-mail'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    minimumSize: Size(double.infinity, 50.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        // Handle Apple login
                      },
                      icon: const Icon(Icons.apple),
                      label: const Text('Apple'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Handle Google login
                      },
                      icon: SvgPicture.asset(
                        'assets/onboarding/Icons/Google.svg',
                        height: 24.h,
                        width: 24.w,
                      ),
                      label: const Text('Google'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Handle Facebook login
                      },
                      icon: const Icon(Icons.facebook),
                      label: const Text('Facebook'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w),
            child: const Text(
              'By continuing you agree to the Terms of Services & Privacy Policy',
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
