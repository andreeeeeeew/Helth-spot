import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/constants.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/cubit/emergency_contact_cubit/emergency_contact_cubit.dart';
import 'package:Health_Spot/presentation/screens/auth/register_screen.dart';
import 'package:Health_Spot/presentation/screens/emergency_contancts/Emergency_contacts.dart';
import 'package:Health_Spot/presentation/screens/home_screen/data.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../../widget/stroke_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.7);
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //     image: AssetImage('assets/images/leg.png'),
          //     fit: BoxFit.cover),
          gradient: LinearGradient(
              colors: [
                Color(0xffffffff),
                Color(0xff98d0e8),
                Color(0xff559fbe),
                Color(0xff257bb0),
                Color(0xff004283),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              transform: GradientRotation(0.5)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // app name
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text(
                                  'Are you sure you want to logout?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    SharedPreferences pref =
                                        await SharedPreferences.getInstance();
                                    await pref.clear();
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterScreen(),
                                        ),
                                        (route) => false);
                                  },
                                  child: const Text('Yes'),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.doorOpen,
                          size: 20.sp,
                          color: AppColors.kColor3,
                        ),
                      ),
                      Text(
                        ' Health spot',
                        style: TextStyle(
                          color: AppColors.kColor3,
                          fontSize: 35.sp,
                          // fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFonts.kFontsCourgette,
                        ),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      ClipOval(
                        child: Material(
                          elevation: 20,
                          shadowColor: Colors.cyanAccent,
                          color: Colors.redAccent.withOpacity(0),
                          child: InkWell(
                            splashColor: Colors.redAccent[700], // Splash color
                            onTap: () async {
                              SharedPreferences pref =
                                  await SharedPreferences.getInstance();
                              var phone = pref.getString('phone');
                              phone == null
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            EmergencyContacts(),
                                      ),
                                    )
                                  : await FlutterPhoneDirectCaller.callNumber(
                                      phone);
                              // : await launch('tel:$emergencyContact');
                            },
                            child: const SizedBox(
                                width: 50,
                                height: 50,
                                child: Center(
                                  child: DefaultText(
                                    text: 'Help',
                                    fontSize: 14,
                                    fontFamily: AppFonts.kFontsCourgette,
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // app logo
            Image.asset(
              'assets/images/5Untitled-2@4x.png',
              height: 20.h,
            ),
            SizedBox(
              height: 5.h,
            ),

            // scroller
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  padding: const EdgeInsets.only(bottom: 30),
                  child: PageView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: categories.length,
                      controller: pageController,
                      itemBuilder: (context, i) {
                        return Transform.scale(
                          scale: 1,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          categories[i]['screen']));
                            },
                            child: Container(
                              padding: const EdgeInsets.only(right: 20),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      categories[i]['image'],
                                      height: 370,
                                      fit: BoxFit.cover,
                                      alignment:
                                          Alignment(-pageOffset.abs() + i, 0),
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    bottom: 20,
                                    right: 10,
                                    child: StrokeText(
                                        text: categories[i]['name'],
                                        fontSize: 30,
                                        strokeColor: AppColors.kColor3,
                                        strokeThickness: 2.5,
                                        fontFamily: AppFonts.kFontsCourgette),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
