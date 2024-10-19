import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'dart:async';
// ...
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

class SidesEffects extends StatefulWidget {
  const SidesEffects({Key? key}) : super(key: key);

  @override
  SidesEffectsState createState() => SidesEffectsState();
}

class SidesEffectsState extends State<SidesEffects> {
  final searchController = TextEditingController();
  List<String> sideEffects = [];
  final FocusNode _focusNode = FocusNode();
  bool isLoading = false;
  bool arabic = false;
  String? errorMessage;
  final String _memTranApiUrl = 'https://api.mymemory.translated.net/get';
  final String _apiKey = '77c59d08675ec59f26d3';

  Future<void> searchDrug() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    _focusNode.unfocus();
    try {
      final response = await http.get(Uri.parse(
          'https://api.fda.gov/drug/event.json?search=${searchController.text}&limit=1'));
      final data = jsonDecode(response.body);
      final sideEffectsData = data['results'][0]['patient']['reaction'];
      final sideEffectsList =
          List<String>.from(sideEffectsData.map((e) => e['reactionmeddrapt']));
      setState(() {
        sideEffects.clear();
        sideEffects.addAll(sideEffectsList);
      });
// Translate side effects from English to Arabic
      if (arabic == true) {
        for (int i = 0; i < sideEffects.length; i++) {
          final response = await http.post(Uri.parse(_memTranApiUrl), body: {
            'q': sideEffects[i],
            'langpair': 'en|ar',
            'key': _apiKey,
          });
          final data = jsonDecode(response.body);
          final translatedText = data['responseData']['translatedText'];
          sideEffects[i] = translatedText;
        }
      }
    } catch (e) {
      setState(() {
        errorMessage = 'please enter a valid drug name';
        sideEffects = [];
      });
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff1791B1),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              arabic == false ? arabic = true : arabic = false;
              setState(() {
                searchDrug();
              });
            },
            icon: const Icon(
              Icons.translate,
              color: AppColors.kColor3,
            ),
          )
        ],
        centerTitle: true,
        title: const Text(
          'Sides Effects',
          style: TextStyle(
              fontSize: 37,
              color: AppColors.kColor3,
              fontFamily: AppFonts.kFontsCourgette),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xffffffff),
              Color(0xff98d0e8),
              Color(0xff559fbe),
              Color(0xff257bb0),
              Color(0xff004283),

              // AppColors.kColor1,
              // AppColors.kColor2,
              // AppColors.kColor3,
              // Color(0xff030c54),
            ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                transform: GradientRotation(0.5))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              TextField(
                onSubmitted: (value) {
                  searchDrug();
                },
                focusNode: _focusNode,
                style:
                    const TextStyle(color: AppColors.kColor3, fontSize: 18.0),
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Enter drug name',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: AppColors.kColor3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(color: AppColors.kColor3),
                  ),
                  prefixIcon: const Icon(Icons.search_outlined),
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: searchDrug,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.kColor2,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(width: 8.0),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
              ),
              if (errorMessage != null)
                Padding(
                  padding: EdgeInsets.only(top: 1.5.h),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.7),
                    ),
                    child: Text(
                      errorMessage!,
                      style: TextStyle(color: Colors.red, fontSize: 12.sp),
                    ),
                  ),
                ),
              if (isLoading)
                Expanded(
                  child: Center(
                    child: Text(
                      // 'Loading Data 😄.',
                      '',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        // fontFamily: AppFonts.kFontsCourgette,
                      ),
                    ),
                  ),
                )
              else
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: sideEffects.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          title: Text(
                            sideEffects[index],
                            textAlign: arabic == true
                                ? TextAlign.right
                                : TextAlign.left,
                          ),
                          textColor: AppColors.kColor2,
                        ),
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
