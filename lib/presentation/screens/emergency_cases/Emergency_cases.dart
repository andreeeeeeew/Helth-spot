import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/BleedingScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/BruisingScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/BurnsScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/FeverScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/FractionsScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/PoisoningScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/SprainsScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/SwoonsScreen.dart';
import 'package:Health_Spot/presentation/screens/emergency_cases/screens_in_emergency/WoundsScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class EmergencyCases extends StatefulWidget {
  const EmergencyCases({super.key});

  @override
  State<EmergencyCases> createState() => _EmergencyCasesState();
}

class _EmergencyCasesState extends State<EmergencyCases> {
  List<String> titles = [
    "Burns",
    "Wounds",
    "Sprains",
    "Bruising",
    "Fractions",
    "Swoons",
    "Bleeding",
    "Poisoning",
    "Fever",
  ];
  List<String> arabicTitles = [
    "الحروق",
    "الجروح",
    "الالتواء",
    "كدمات",
    "الكسور",
    "الإغماء",
    "نزيف",
    "تسمم",
    "حمى",
  ];
  List<Widget> images = [
    Hero(
      tag: "Burns",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80.0),
        child: Image.asset(
          "assets/images/burns.jpeg",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
        tag: "Wounds",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Image.asset(
            "assets/images/wounds.jpeg",
            fit: BoxFit.cover,
          ),
        )),
    Hero(
        tag: "Sprains", // kdmat
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Image.asset(
            "assets/images/sprains.jpeg",
            fit: BoxFit.cover,
          ),
        )),
    Hero(
        tag: "Bruising",
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Image.asset(
            "assets/images/bruising.jpg",
            fit: BoxFit.cover,
          ),
        )),
    Hero(
        tag: "Fractions", //KSOR
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Image.asset(
            "assets/images/Fraaction.jpg",
            fit: BoxFit.cover,
          ),
        )),
    Hero(
        tag: "Swoons", //E8MA2AT
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Image.asset(
            "assets/images/Swoons.jpg",
            fit: BoxFit.cover,
          ),
        )),
    Hero(
        tag: "Bleeding", //NZEEF
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Image.asset(
            "assets/images/Bleeding.jpg",
            fit: BoxFit.cover,
          ),
        )),
    Hero(
      tag: "Poisoning", //TSMOM
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80.0),
        child: Image.asset(
          "assets/images/Poisoning.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
        tag: "Fever", //7oma
        child: ClipRRect(
          borderRadius: BorderRadius.circular(80.0),
          child: Image.asset(
            "assets/images/Fever.jpg",
            fit: BoxFit.cover,
          ),
        )),
  ];
  List<Widget> pages = [
    const BurnsScreen(),
    const WoundsScreen(),
    const SprainsScreen(),
    const BruisingScreen(),
    const FractionsScreen(),
    const SwoonsScreen(),
    const BleedingScreen(),
    const PoisoningScreen(),
    const FeverScreen(),
  ];
  bool arabic = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
            child: Container(color: Colors.transparent),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white.withAlpha(5),
        actions: [
          IconButton(
            onPressed: () {
              arabic == false ? arabic = true : arabic = false;
              setState(() {});
            },
            icon: const Icon(
              Icons.translate,
              color: AppColors.kColora,
            ),
          )
        ],
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: AppColors.kColorDark,
        ),
        title:
        Text(
          arabic == false ? 'Emergency cases' : 'حالات الطوارئ',
          textAlign: arabic == false ? TextAlign.right : TextAlign.left,
          style:  TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: AppFonts.kFontsCourgette,
          ),
        ),

      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffffffff),
              Color(0xff98d0e8),
              Color(0xff0830ef),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          children: [
            Expanded(
              child: VerticalCardPager(
                  align: ALIGN.CENTER,
                  titles: arabic==false?titles:arabicTitles,
                  images: images,
                  initialPage: 5,
                  onSelectedItem: (index) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => pages[index]));
                  },
                  textStyle: const TextStyle(
                    shadows: [
                      Shadow(
                          color: Color(0xff0c29ad),
                          blurRadius: 30,
                          offset: Offset(0, 5))
                    ],
                    color: Colors.white,
                    fontFamily: AppFonts.kKalam,
                    fontWeight: FontWeight.bold,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
