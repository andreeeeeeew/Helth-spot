import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';

class BackPain extends StatefulWidget {
  const BackPain({super.key});

  @override
  State<BackPain> createState() => _BackPainState();
}

class _BackPainState extends State<BackPain> {
  String catPose ='';
  String toe ='';
  String arcatPose ='';
  String artoe ='';
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
            arabic == false ? 'Back Pain' : 'ألم في الظهر',
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
          future:physio.doc('backpain').get(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return const Text("Document does not exist");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
              catPose = data['catcowpose'];
              toe = data['Toe'];
              arcatPose = data['catcowpose-ar'];
              artoe = data['Toe-ar'];
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
                          arabic==false ? "${data['cowPoseTitle']}":"${data['cowPoseTitle-ar']}",
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: AppColors.kColora, fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? catPose.replaceAll("\\n", "\n"):arcatPose.replaceAll("\\n", "\n"),
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
                          imageUrl: '${data['catcowImage']}',
                          placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),

                        SizedBox(height: 4.h,),
                        Text(
                          arabic==false ? "${data['toeTitle']}":"${data['toeTitle-ar']}",
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: AppColors.kColora, fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? toe.replaceAll("\\n", "\n"):artoe.replaceAll("\\n", "\n"),
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
                          imageUrl: '${data['Toe1Image']}',
                          placeholder: (context, url) =>
                          const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                        SizedBox(height: 2.h,),
                        CachedNetworkImage(
                          imageUrl: '${data['Toe2Image']}',
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