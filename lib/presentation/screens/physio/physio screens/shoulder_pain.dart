import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/constant/fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sizer/sizer.dart';

class ShoulderPain extends StatefulWidget {
  const ShoulderPain({super.key});

  @override
  State<ShoulderPain> createState() => _ShoulderPainState();
}

class _ShoulderPainState extends State<ShoulderPain> {
  String shoulder ='';
  String doorway ='';
  String twist ='';
  String arShoulder ='';
  String ardoorway ='';
  String artwist ='';
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
            arabic == false ? 'Shoulder Pain' : 'الم الكتف',
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
          future:physio.doc('Shoulderpain').get(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }

            if (snapshot.hasData && !snapshot.data!.exists) {
              return const Text("Document does not exist");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
              twist = data['twist'];
              doorway = data['doorway'];
              shoulder = data['Shoulder'];
              artwist = data['twist-ar'];
              ardoorway = data['doorway-ar'];
              arShoulder = data['Shoulder-ar'];
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
                          arabic==false ? "${data['ShoulderpainTitle']}":"${data['ShoulderpainTitle-ar']}",
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: AppColors.kColora, fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? shoulder.replaceAll("\\n", "\n"):arShoulder.replaceAll("\\n", "\n"),
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
                          imageUrl: '${data['ShouderImage']}',
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),

                        SizedBox(height: 4.h,),
                        Text(
                          arabic==false ? "${data['doorwayTitle']}":"${data['doorwayTitle-ar']}",
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: AppColors.kColora, fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? doorway.replaceAll("\\n", "\n"):ardoorway.replaceAll("\\n", "\n"),
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
                          imageUrl: '${data['doorwayImage']}',
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),

                        SizedBox(height: 4.h,),
                        Text(
                          arabic==false ? "${data['twistTitle']}":"${data['twistTitle-ar']}",
                          textAlign: arabic == false ? TextAlign.left : TextAlign.right,
                          style: const TextStyle(color: AppColors.kColora, fontSize: 24),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          arabic==false ? twist.replaceAll("\\n", "\n"):artwist.replaceAll("\\n", "\n"),
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
                          imageUrl: '${data['twistImage']}',
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