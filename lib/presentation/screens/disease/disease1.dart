import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/screens/disease_layout/disease_layout.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';
import 'package:sizer/sizer.dart';

class Diseases1 extends StatefulWidget {
  const Diseases1({super.key});

  @override
  State<Diseases1> createState() => _Diseases1State();
}

class _Diseases1State extends State<Diseases1> {
  final List<Color> colorCodes = <Color>[
    // AppColors.kColora,
    // AppColors.kColorb,
    AppColors.kColorc,
    AppColors.kColord,
    AppColors.kColore,
    AppColors.kColorf,
    AppColors.kColorDL,
    AppColors.kColorp,
    AppColors.kColorc,
    AppColors.kColord,
    AppColors.kColore,
    AppColors.kColorf,
    AppColors.kColorDL,
    AppColors.kColorp,
    AppColors.kColorc,
    AppColors.kColord,
    AppColors.kColore,
    AppColors.kColorf,
    AppColors.kColorDL,
    AppColors.kColorp,
    // AppColors.kColorL,
  ];
  List diseases = [];
  String inputDisease = "";
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: const Color(0xff24ccfa),
        ),
        title: Text(
          'Diseases',
          style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black,
              fontFamily: AppFonts.kOleoscript),
        ),
      ),
      body: ListView.builder(
        itemCount: diseases.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            key: Key(diseases[index]),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DiseaseLayoutScreens()));
              },
              // child:
              //     DrugCard(name: diseases[index], color: colorCodes[index]),
              child: Card(
                color: index < colorCodes.length
                    ? colorCodes[index]
                    : colorCodes[5],
                shadowColor: AppColors.kColorLite,
                elevation: 4,
                margin: EdgeInsets.only(left: 5.w, right: 5.w, top: 2.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: ListTile(
                  title: Text(
                    diseases[index],
                    style:
                        const TextStyle(fontFamily: AppFonts.kFontsCourgette),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        diseases.removeAt(index);
                      });
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Color(0xff080742),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: DefaultButton(
        // height: 10,
        width: 40,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Form(
                  key: formKey,
                  autovalidateMode: autovalidateMode,
                  child: AlertDialog(
                    backgroundColor: AppColors.kColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    title: const Text(
                      'Add Disease Name',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFonts.kFontsCourgette,
                        color: AppColors.kColor3,
                      ),
                    ),
                    content: TextFormField(
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'field is required';
                        }
                        return null;
                      },
                      onChanged: (String value) {
                        inputDisease = value;
                      },
                      style:
                          const TextStyle(fontFamily: AppFonts.kFontsCourgette),
                    ),
                    actions: <Widget>[
                      DefaultButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            setState(() {
                              diseases.add(inputDisease);
                            });
                            inputDisease = '';
                            Navigator.of(context).pop();
                          } else {
                            autovalidateMode = AutovalidateMode.always;
                          }

                        },
                        width: 30,
                        height: 5,
                        fontSize: 10,
                        textWidget: const Text(
                          'Add',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: AppFonts.kFontsCourgette,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                );
              });
        },
        textWidget: const Text(
          'Add Disease',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: AppFonts.kFontsCourgette),
        ),
      ),
    );
  }
}
