import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';

class LegPain extends StatefulWidget {
  const LegPain({super.key});

  @override
  State<LegPain> createState() => _LegPainState();
}

class _LegPainState extends State<LegPain> {
  String DOUBLEKNEE ='';
  String arDOUBLEKNEE ='';
  bool arabic=false;

  CollectionReference physio = FirebaseFirestore.instance.collection('physiotherapy');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
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
          title:
          Text(
            arabic == false ? 'Leg Pain' : 'الم الساق',
            textAlign: arabic == false ? TextAlign.right : TextAlign.left,
            style:  TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: AppFonts.kFontsCourgette,
            ),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future:physio.doc('Legpain').get(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return const Text("Document does not exist");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
              DOUBLEKNEE = data['DOUBLEKNEE'];
              arDOUBLEKNEE = data['DOUBLEKNEE-ar'];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),

                  child: Column(
                      crossAxisAlignment: arabic == false
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                          arabic==false ? "${data['doubleKneeTitle']}":"${data['doubleKneeTitle-ar']}",
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: AppColors.kColora, fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? DOUBLEKNEE.replaceAll("\\n", "\n"):arDOUBLEKNEE.replaceAll("\\n", "\n"),
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 12.sp
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CachedNetworkImage(
                          imageUrl: '${data['image:']}',
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
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