import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/constants.dart';
import 'package:Health_Spot/presentation/screens/home_screen/home_screen.dart';
import 'package:Health_Spot/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IsLoggedIn extends StatefulWidget {
  @override
  _IsLoggedInState createState() => _IsLoggedInState();
}

class _IsLoggedInState extends State<IsLoggedIn> {
  String? token;
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    if (initial) {
      SharedPreferences.getInstance().then((sharedPrefValue) {
        setState(() {
          initial = false;
          token = sharedPrefValue.getString(kAccessToken);
          print("the token is $token");
        });
      });
      return const CircularProgressIndicator();
    } else {
      if (token == null) {
        return const OnBoardingScreen();
      } else {
        return const Home();
      }
    }
  }
}
