import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:Health_Spot/presentation/widget/def_text.dart';
import 'package:sizer/sizer.dart';

class SwoonsScreen extends StatefulWidget {
  const SwoonsScreen({Key? key}) : super(key: key);

  @override
  State<SwoonsScreen> createState() => _SwoonsScreenState();
}

class _SwoonsScreenState extends State<SwoonsScreen> {
  @override
  bool arabic = false;

  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 26,
          ),
          color: AppColors.kColora,
        ),
        title: Text(
          arabic == false ? 'Swoons' : 'الإغماء',
          textAlign: arabic == true ? TextAlign.right : TextAlign.left,
          style: const TextStyle(
              fontFamily: AppFonts.kFontsCourgette,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: AppColors.kColora),
        ),
      ),
      body: SingleChildScrollView(
        // scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: arabic == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                arabic == false ? 'Swoons :' : 'الإغماء:',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 2.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  Text(
                    arabic == false
                        ? 'Fainting occurs when your brain temporarily does not receive an adequate blood supply, causing you to lose consciousness. This loss of consciousness is usually brief.Fainting may not have medical significance. Or the cause may be a serious disorder, and the heart is often involved in this case. Therefore, treat the loss of consciousness as a medical emergency until the signs and symptoms resolve and the cause is determined. Talk to your doctor if you lose consciousness more than once.'
                        : 'يحدث الإغماء عندما لا يتلقى دماغك إمدادًا كافيًا من الدم مؤقتًا ، مما يؤدي إلى فقدان الوعي. عادة ما يكون فقدان الوعي قصيرًا ، وقد لا يكون للإغماء أهمية طبية. أو قد يكون السبب اضطرابًا خطيرًا ، وغالبًا ما يشترك القلب في هذه الحالة. لذلك ، تعامل مع فقدان الوعي كحالة طبية طارئة حتى تختفي العلامات والأعراض ويتم تحديد السبب. تحدث إلى طبيبك إذا فقدت وعيك أكثر من مرة.',
                    textAlign:
                    arabic == true ? TextAlign.right : TextAlign.left,
                    style: TextStyle(

                        fontSize: 13.sp,
                        color: Colors.black),
                  ),

                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? 'If you feel faint' : 'إذا كنت تشعر بالإغماء',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 1.h,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    "assets/images/feel swoon1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/feel swoon1.jpg
              SizedBox(
                height: 2.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  Text(
                    arabic == false ? '• So lie down or sit down. To reduce your chances of fainting again, don\'t get up too soon.' : '• استلقِ أو اجلس. لتقليل فرص الإغماء مرة أخرى ، لا تستيقظ مبكرًا.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style: TextStyle(

                        fontSize: 13.sp,
                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Put your head between your knees if you are sitting' : '• ضع رأسك بين ركبتيك إذا كنت جالسًا.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style: TextStyle(

                        fontSize: 13.sp,
                        color: Colors.black),
                  ),


                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false ? '• if you see someone else pass out' : 'إذا رأيت شخصًا آخر يفقد الوعي',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 3.h,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/feel swoon.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/feel swoon.jpg
              SizedBox(
                height: 2.h,
              ),
              Container(
                width: 90.w,
                child: Column(
                  crossAxisAlignment: arabic == false
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Text(
                      arabic == false ? '•Make him lie on his back. If he\'s not injured and breathing, raise his legs above heart level — about 12 inches (30 cm) — if possible. Loosen belts, collars, or other tight clothing.' : 'اجعله يستلقي على ظهره. إذا لم يكن مصابًا ويتنفس ، ارفع ساقيه فوق مستوى القلب - حوالي 12 بوصة (30 سم) - إن أمكن. قم بفك الأحزمة أو الياقات أو الملابس الضيقة الأخرى.',
                      textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                      style: TextStyle(

                          fontSize: 13.sp,
                          color: Colors.black),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      arabic == false ? '• To reduce the chances of fainting again, do not make him get up after a short time. If the person does not regain consciousness within one minute, call 911 or the local emergency number.' : '• لتقليل فرص الإغماء مرة أخرى ، لا تجعله ينهض بعد وقت قصير. إذا لم يستعد الشخص وعيه في غضون دقيقة واحدة ، فاتصل برقم 911 أو رقم الطوارئ المحلي.قم بفك الأحزمة أو الياقات أو الملابس الضيقة الأخرى.',
                      textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                      style: TextStyle(

                          fontSize: 13.sp,
                          color: Colors.black),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      arabic == false ? '•Check for breathing. If the person is not breathing, begin CPR. Call 911 or any local emergency number. Continue to perform CPR until help arrives or the person regains breathing.If the person is injured from a fall that accompanies fainting, treat the bumps, bruises, or cuts appropriately. Control the bleeding by pressing directly on the spot' : '• تحقق من التنفس. إذا كان الشخص لا يتنفس ، فابدأ في الإنعاش القلبي الرئوي. اتصل برقم 911 أو أي رقم طوارئ محلي. استمر في إجراء الإنعاش القلبي الرئوي حتى وصول المساعدة أو يستعيد الشخص التنفس ، إذا أصيب الشخص بسبب السقوط المصاحب للإغماء ، عالج النتوءات أو الكدمات أو الجروح بشكل مناسب. تحكم في النزيف بالضغط مباشرة على البقعة ',
                      style: TextStyle(

                          fontSize: 13.sp,
                          color: Colors.black),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}