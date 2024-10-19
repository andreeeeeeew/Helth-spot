import 'package:Health_Spot/constant/fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';


class StomachPainScreen extends StatefulWidget {

  const StomachPainScreen({super.key});

  @override
  State<StomachPainScreen> createState() => _StomachPainScreenState();
}

class _StomachPainScreenState extends State<StomachPainScreen> {
  String herbal1 ='';

  String herbal2 ='';

  String herbal3 ='';

  String disease ='';
  String arherbal1 ='';

  String arherbal2 ='';

  String arherbal3 ='';

  String ardisease ='';

  bool arabic=false;

  CollectionReference physio = FirebaseFirestore.instance.collection('HerbalMedicine');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:

          Text(
            arabic == false ? 'Stomach pain' : 'آلام في المعدة',
            textAlign: arabic == false ? TextAlign.right : TextAlign.left,
            style:  TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: AppFonts.kFontsCourgette,
            ),
          ),
          titleSpacing: 00.0,
          leading: IconButton(
              onPressed: () {Navigator.pop(context);},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          actions: [
            IconButton(
              onPressed: () {
                arabic == false ? arabic = true : arabic = false;
                setState(() {});
              },
              icon: const Icon(
                Icons.translate,
                color: Colors.black,
              ),
            )
          ],
          centerTitle: true,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: const Color(0xff6fc74c),
        ),
        body: FutureBuilder(
          future:physio.doc('Stomach pain').get(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return const Text("Document does not exist");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
              herbal1 = data['herbal1'];
              herbal2 = data['herbal2'];
              herbal3 = data['herbal3'];
              disease = data['disease'];
              arherbal1 = data['herbal1-ar'];
              arherbal2 = data['herbal2-ar'];
              arherbal3 = data['herbal3-ar'];
              ardisease = data['disease-ar'];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),

                  child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          arabic==false ? "${data['diseaseName']}":"${data['diseaseName-ar']}",
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: Color(0xff6fc74c), fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? disease.replaceAll("\\n", "\n"):ardisease.replaceAll("\\n", "\n"),
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 12.sp
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),

                            child: CachedNetworkImage(
                              imageUrl: '${data['diseaseImage']}',
                              placeholder: (context, url) =>
                                  const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 4.h,),
                        Text(
                          arabic==false ?"${  data['herbalTitle1']}":"${  data['herbalTitle1-ar']}" ,
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: Color(0xff6fc74c), fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? herbal1.replaceAll("\\n", "\n"):arherbal1.replaceAll("\\n", "\n"),
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 12.sp
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),

                            child: CachedNetworkImage(
                              imageUrl: '${data['herbal1image']}',
                              placeholder: (context, url) =>
                                  const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 4.h,),
                        Text(
                          arabic==false ?"${  data['herbalTitle2']}":"${  data['herbalTitle2-ar']}" ,
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: Color(0xff6fc74c), fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? herbal2.replaceAll("\\n", "\n"):arherbal2.replaceAll("\\n", "\n"),
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 12.sp
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: '${data['herbal2image']}',
                              placeholder: (context, url) =>
                                  const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 4.h,),
                        Text(
                          arabic==false ?"${  data['herbalTitle3']}":"${  data['herbalTitle3-ar']}" ,
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: Color(0xff6fc74c), fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? herbal3.replaceAll("\\n", "\n"):arherbal3.replaceAll("\\n", "\n"),
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 12.sp
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: '${data['herbal3image']}',
                              placeholder: (context, url) =>
                                  const Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                          ),
                        ),

                      ]),
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          },
        ));
  }
}