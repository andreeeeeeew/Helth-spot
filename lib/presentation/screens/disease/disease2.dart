import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:Health_Spot/presentation/widget/default_button.dart';

class Diseases2 extends StatefulWidget {
  const Diseases2({Key? key}) : super(key: key);

  @override
  State<Diseases2> createState() => _Diseases2State();
}

class _Diseases2State extends State<Diseases2> {
  final List<Color> colorCodes = <Color>[
    AppColors.kColorDark,
    AppColors.kColorDL,
    AppColors.kColorL,
    AppColors.kColorp,
    AppColors.kColora,
    AppColors.kColord,
    AppColors.kColorc,
    AppColors.kColore,
    AppColors.kColorf,
    AppColors.kColorLite,
    AppColors.kColorb,
  ];
  List<String> drugs = [];
  String inputDrugs = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: Color(0xff24ccfa),
        ),
        title: Text(
          'Drugs',
          style: TextStyle(
              fontSize: 24,
              color: Color(0xff0e0a8c),
              fontFamily: AppFonts.kOleoscript),
        ),
      ),
      body: ListView.builder(
        itemCount: drugs.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(drugs[index]),
            child: Card(
              color: colorCodes[index],
              elevation: 4,
              margin: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              child: ListTile(
                title: Text(
                  drugs[index],
                  style: TextStyle(fontFamily: AppFonts.kFontsCourgette),
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      drugs.removeAt(index);
                    });
                  },
                  icon: Icon(
                    Icons.delete,
                    color: AppColors.kColorLite,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: DefaultButton(
        height: 10,
        width: 40,
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  backgroundColor: AppColors.kColorp,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: Text(
                    'Add Drug Name',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: AppFonts.kFontsCourgette,
                      color: Color(0xff0200e1),
                    ),
                  ),
                  content: TextFormField(
                    onChanged: (String value) {
                      inputDrugs = value;
                    },
                    style: TextStyle(fontFamily: AppFonts.kFontsCourgette),
                  ),
                  actions: <Widget>[
                    DefaultButton(
                      onPressed: () {
                        setState(() {
                          drugs.add(inputDrugs);
                        });
                        Navigator.of(context).pop();
                      },
                      width: 20,
                      height: 7,
                      fontSize: 10,
                      color: AppColors.kColorb,
                      textWidget: Text(
                        'Add',
                        style: TextStyle(
                            fontFamily: AppFonts.kFontsCourgette,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                );
              });
        },
        textWidget: Text(
          'Add Drugs',
          style: TextStyle(
              fontFamily: AppFonts.kFontsCourgette,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}
