import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/constants.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/cubits/notes_cubit/notes_cubit.dart';
import 'package:Health_Spot/presentation/screens/home_screen/home_screen.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:Health_Spot/presentation/widget/default_text.dart';
import 'package:Health_Spot/presentation/widget/default_textfield.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late StreamSubscription<bool> subscription;
  @override
  void initState() {
    super.initState();
    subscription = KeyboardVisibilityController().onChange.listen((isVisible) {
      keyboard = isVisible;
      setState(() {});
    });
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  final int _pageState = 1;
  var _backGroundColor = AppColors.kColorLite;
  var _textColor = AppColors.kColorDark;

  double _loginYOffset = 0;

  double _textMargin = 10.h;

  bool keyboard = false;

  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  bool otpVisibility = false;
  User? user;
  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    if (_pageState == 0) {
      _backGroundColor = AppColors.kColorLite;
      _textColor = AppColors.kColorDark;
      _loginYOffset = 150.h;
      _textMargin = 10.h;
    } else {
      _backGroundColor = AppColors.kColor3;
      _textColor = AppColors.kColor1;
      _loginYOffset = keyboard ? 15.h : 40.h;
      _textMargin = keyboard ? 6.h : 8.h;
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          AnimatedContainer(
            height: double.infinity,
            color: const Color(0xff004283),
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(milliseconds: 1500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // app name
                Center(
                  child: AnimatedContainer(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 1000),
                    margin: EdgeInsetsDirectional.only(top: _textMargin),
                    child: DefaultText(
                      text: 'Health spot',
                      fontFamily: 'Courgette',
                      fontSize: 30,
                      color: _textColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Center(
                  child: Image.asset(
                    'assets/images/5Untitled-2@4x.png',
                    height: 20.h,
                  ),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            transform: Matrix4.translationValues(0, _loginYOffset, 1),
            curve: Curves.elasticOut,
            duration: const Duration(
              milliseconds: 1000,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),

                  DefaultTextFormField(
                    maxLength: 11,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    onChanged: (p0) {},
                    prefixIcon: const Icon(
                      Icons.phone,
                      color: AppColors.kColorDark,
                    ),
                    hText: 'Enter your phone number',
                    labelText: 'Phone Number',
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Visibility(
                    visible: otpVisibility,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 3.h),
                      child: DefaultTextFormField(
                        maxLength: 6,
                        controller: otpController,
                        keyboardType: TextInputType.number,
                        onChanged: (p0) {},
                        prefixIcon: const Icon(
                          Icons.verified,
                          color: AppColors.kColorDark,
                        ),
                        hText: 'Enter OTP code',
                        labelText: 'OTP code',
                      ),
                    ),
                  ),
                  DefaultButton(
                    onPressed: () {
                      if (otpVisibility) {
                        verifyOTP();
                      } else {
                        loginWithPhone();
                      }
                    },
                    textWidget: DefaultText(
                      fontFamily: AppFonts.kFontsCourgette,
                      text: otpVisibility ? "Verify" : "Login",
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 5,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+2" + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) async {
          print("You are logged in successfully");

        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        setState(() {
          user = FirebaseAuth.instance.currentUser;
        });
      },
    ).whenComplete(
      () async {
        if (user != null) {
          Fluttertoast.showToast(
            msg: "You are logged in successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          SharedPreferences pref = await SharedPreferences.getInstance();
          String uid = auth.currentUser!.uid;
          pref.setString(kAccessToken, uid);
          BlocProvider.of<NotesCubit>(context).accessToken=uid;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
          );
        } else {
          Fluttertoast.showToast(
            msg: "your login is failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
    );
  }
}
