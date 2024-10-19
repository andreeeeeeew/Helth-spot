import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/screens/auth/register_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                if (index == 4) {
                  onLastPage = true;
                } else {
                  onLastPage = false;
                }
              });
            },
            children: [
              Container(
                color: Color(0xffF5F7FC),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        "assets/images/emergency.jpg",
                        fit: BoxFit.cover,
                        height: 65.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: RichText(
                        text: TextSpan(
                          text:
                              'Emergency cases are situations that require immediate attention and action to prevent harm or save lives.\n So we added a ',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontFamily: AppFonts.kKalam,
                          ),
                          children: [
                            TextSpan(
                                text: 'first aid solutions',
                                style: TextStyle(color: Colors.red)),
                            TextSpan(text: '.')
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ), //emergancy
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        "assets/images/remin3.jpg",
                        fit: BoxFit.cover,
                        height: 50.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Text(
                        'A pill reminder is a tool that helps individuals keep track of their medication schedule. It is especially useful for people who take multiple medications with different dosages and timing requirements.',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontFamily: AppFonts.kKalam,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ), //reminder
              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        "assets/images/physio therapy.jpg",
                        fit: BoxFit.cover,
                        height: 45.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Text(
                        'Physiotherapy is a healthcare profession that addresses physical impairments, disabilities, and pain through prevention, treatment, and management. It involves the use of various techniques and exercises to improve physical function and mobility.',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontFamily: AppFonts.kKalam,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ), //physio
              Container(
                color: Color(0xffD6E8F2),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        "assets/images/sideseffectt.jpg",
                        fit: BoxFit.cover,
                        height: 40.h,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Text(
                        'The app has a feature that provides information on potential side effects for each medication, based on the latest medical research. This empowers users to make informed decisions about their medications and manage any side effects that may arise.',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontFamily: AppFonts.kKalam,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ), //sides effect
              Container(
                color: Color(0xffC2E3F2),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: Image.asset(
                        "assets/images/herbalM.jpg",
                        fit: BoxFit.cover,
                        height: 45.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: Text(
                        'Herbal medicine uses plant-based materials to treat health conditions and promote wellness. It can be a safe and effective alternative to conventional medications, but it\'s important to consult with a healthcare provider for proper guidance and monitoring.',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontFamily: AppFonts.kKalam,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ), //herbal
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                !onLastPage
                    ? IconButton(
                        icon: Icon(
                          Icons.double_arrow,
                        ),
                        color: Colors.indigo,
                        iconSize: 30.sp,
                        onPressed: () {
                          _controller.animateToPage(
                            4,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                      )
                    : const Text(''),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: CustomizableEffect(
                      dotDecoration: DotDecoration(
                        height: 12,
                        color: Colors.indigo.shade200,
                        borderRadius: BorderRadius.circular(10),
                        // rotationAngle: 90,
                        width: 6,
                      ),
                      activeDotDecoration: DotDecoration(
                        height: 25,
                        width: 10,
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onDotClicked: (index) {},
                ),
                onLastPage
                    // done
                    ? TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ));
                        },
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.indigo,
                            fontFamily: AppFonts.kFontsCourgette,
                            fontSize: 18.sp,
                          ),
                        ),
                      )
                    // next
                    : IconButton(
                        icon: Icon(
                          Icons.arrow_forward_ios,
                        ),
                        color: Colors.indigo,
                        iconSize: 30.sp,
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
