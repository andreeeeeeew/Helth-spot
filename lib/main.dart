import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/cubit/emergency_contact_cubit/emergency_contact_cubit.dart';
import 'package:Health_Spot/cubits/notes_cubit/notes_cubit.dart';
import 'package:Health_Spot/helper/is_loged_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'constant/constants.dart';
import 'firebase_options.dart';
import 'global_bloc.dart';
import 'helper/simple_bloc_observer.dart';
import 'presentation/screens/disease_layout/disease_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleBlocObserver();

  runApp(const MedicalCare());
}

class MedicalCare extends StatefulWidget {
  const MedicalCare({super.key});

  @override
  State<MedicalCare> createState() => _MedicalCareState();
}

class _MedicalCareState extends State<MedicalCare> {
  // This widget is the root of your application.
  GlobalBloc? globalBloc;

  @override
  void initState() {
    globalBloc = GlobalBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Provider<GlobalBloc>.value(
      value: globalBloc!,
      child: Sizer(builder: (context, orientation, deviceType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => EmergencyContactCubit(),
            ),
            BlocProvider(
              create: (context) => NotesCubit(),
            ),
          ],
          child: MaterialApp(
            initialRoute: 'onBoarding',
            routes: {
              'onBoarding': (context) => IsLoggedIn(),
              'DiseaseLayoutScreens': (context) => DiseaseLayoutScreens(),
            },
            debugShowCheckedModeBanner: false,
            title: 'Pill Reminder',
            //theme customization
            theme: ThemeData.light().copyWith(
              brightness: Brightness.light,
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: kScaffoldColor,
              //appbar theme
              appBarTheme: AppBarTheme(
                toolbarHeight: 7.h,
                backgroundColor: Colors.white,
                elevation: 0,
                iconTheme: IconThemeData(
                  color: kSecondaryColor,
                  size: 20.sp,
                ),
                titleTextStyle: GoogleFonts.mulish(
                  color: kTextColor,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  fontSize: 16.sp,
                ),
              ),
              textTheme: TextTheme(
                bodyText1: const TextStyle(
                  color: Colors.black,
                  fontFamily: AppFonts.kFontsPacifico
                ),
                bodyText2: const TextStyle(
                    color: Colors.black,
                    fontFamily: AppFonts.kKalam
                ),
                headline3: TextStyle(
                  fontSize: 28.sp,
                  color: kSecondaryColor,
                  fontWeight: FontWeight.w500,
                ),
                headline4: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                  color: kTextColor,
                ),
                headline5: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w900,
                  color: kTextColor,
                ),
                headline6: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  color: kTextColor,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.0,
                ),
                subtitle1:
                    GoogleFonts.poppins(fontSize: 15.sp, color: kPrimaryColor),
                subtitle2: GoogleFonts.poppins(
                    fontSize: 12.sp, color: kTextLightColor),
                caption: GoogleFonts.poppins(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w400,
                  color: kTextLightColor,
                ),
                labelMedium: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  color: kTextColor,
                ),
              ),
              inputDecorationTheme: const InputDecorationTheme(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: kTextLightColor,
                    width: 0.7,
                  ),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: kTextLightColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor),
                ),
              ),
              //lets customize the timePicker theme
              timePickerTheme: TimePickerThemeData(
                backgroundColor: kScaffoldColor,
                hourMinuteColor: kTextColor,
                hourMinuteTextColor: kScaffoldColor,
                dayPeriodColor: kTextColor,
                dayPeriodTextColor: kScaffoldColor,
                dialBackgroundColor: kTextColor,
                dialHandColor: kPrimaryColor,
                dialTextColor: kScaffoldColor,
                entryModeIconColor: kOtherColor,
                dayPeriodTextStyle: GoogleFonts.aBeeZee(
                  fontSize: 8.sp,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
