import 'package:Health_Spot/constant/fonts.dart';
import 'package:flutter/material.dart';
import 'package:Health_Spot/constant/colors.dart';
import 'package:sizer/sizer.dart';

class WoundsScreen extends StatefulWidget {
  const WoundsScreen({Key? key}) : super(key: key);

  @override
  State<WoundsScreen> createState() => _WoundsScreenState();
}

class _WoundsScreenState extends State<WoundsScreen> {
  bool arabic=false;
  @override
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
        title:
        Text(
          arabic == false ? 'Wounds' : 'الجروح',
          textAlign: arabic == true ? TextAlign.right : TextAlign.left,
          style: const TextStyle(
              fontFamily: AppFonts.kFontsCourgette,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: AppColors.kColora),
        ),
      ),
      body: SingleChildScrollView(

        physics: BouncingScrollPhysics(),

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: arabic == false
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                arabic == false ? 'Small (minor) wounds :' : 'الجروح الصغيرة:',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 3.h,
              ),
              Column(children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/minor wounds1.jpg",
                    fit: BoxFit.cover,
                  ),
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
                      arabic == false ? '• Put a bandage on the wound and then apply pressure on it until the bleeding stops (if necessary) :' : '• ضع ضمادة على الجرح ثم اضغط عليه حتى يتوقف النزيف (إذا لزم الأمر)',
                      textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                      style: TextStyle(
                          fontSize: 13.sp,

                          color: Colors.black),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      arabic == false ? '• Washing the wound with soap and water or any antiseptic for wounds,' : '• غسل الجرح بالماء والصابون أو أي مطهر للجروح.',
                      textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                      style:  TextStyle(
                          fontSize: 13.sp,

                          color: Colors.black),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      arabic == false ? '• Cover the wound with sterile gauze or a pad' : 'قم بتغطية الجرح بشاش معقم أو ضمادة',
                      textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                      style:  TextStyle(
                          fontSize: 13.sp,

                          color: Colors.black),
                    ),

                  ],
                ),
              ]),
              SizedBox(
                height: 7.h,
              ),
              Text(
                arabic == false ? 'Major (danger) wounds' : 'جروح خطيرة (خطيرة)',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
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
                    "assets/images/Major (serious) wounds1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/Major (serious) wounds1.jpg
              SizedBox(
                height: 2.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  Text(
                    arabic == false ? '• Let the casualty lie down to prevent fainting.' : '• دع المصاب يستلقي لمنع الإغماء.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Lift the injured part slightly off the ground.' : '• ارفع الجزء المصاب قليلاً عن الأرض.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Try to stop or reduce the bleeding by applying a bandage or clothClean and squeeze it and if saturatedWith blood, change it.' : '• حاولي إيقاف أو تقليل النزيف عن طريق وضع ضمادة أو قطعة قماش نظيفة وعصريها وإذا كانت مشبعة بالدم فغيريها.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Call an ambulance' : '• اتصل بالإسعاف',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false ? 'The bandage:' : 'الضمادة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 3.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children:  [
                  Text(
                    arabic == false ? 'It is used to prevent bleeding, protect the wound from contamination and infections, and prevent leakageSable the body from the wound.:' : 'يستخدم لمنع النزيف ، وحماية الجرح من التلوث والالتهابات ، ومنع التسرب ، وإبقاء الجسم من الجرح.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(

                        fontSize: 13.sp,
                        color: Colors.black),
                  ),

                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? 'Band' :'الضماد',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 3.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  Text(
                    arabic == false ? 'It is used to prevent bleeding, protect the wound from contamination and infections, and prevent leakageSable the body from the wound.:' : 'يتم استخدامه لتثبيت الضمادة فوق الجرح والضغط على الجرح لوقف النزيف وإزالة التورم الناتج. كما أنه يستخدم لتثبيت الأطراف المصابة ومفاصلها. استخدام الأربطة والضمادات يتطلب مهارة مكتسبة بالممارسة: مشاهدة شخص ماهر يقوم بعملية استخدام الدانتيل ، وهناك قواعد أساسية يجب اتباعها في أي حال.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(

                        fontSize: 13.sp,
                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Choose the appropriate ligature for the site of the wound.' : 'اختر الرباط المناسب لموقع الجرح.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Make sure to rest the casualty and the injured part' : '• تأكد من إراحة المصاب والجزء المصاب',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Stand opposite the site of the wound to be tied.' : '• قف مقابل موقع الجرح المراد ربطه.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Bandage the wound site from the inside to the outside and from bottom to top.' : '• ضمد مكان الجرح من الداخل إلى الخارج ومن الأسفل إلى الأعلى.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '•  Ensure that the bandage does not block blood flow to the injured part.' : 'تأكد من أن الضمادة لا تمنع تدفق الدم إلى الجزء المصاب.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• When you tie your hand, leave the tips of your fingers sticking out,whether you use a bandage Ordinary or splint, as well as for the tips of the toes and watch them,and if You notice swelling, a change in skin color,or coldness or numbness, this is evidence The blood flow stopped,so I immediately removed the bandage or splint.' : 'عند ربط يدك ، اترك أطراف أصابعك بارزة ، سواء كنت تستخدم ضمادة عادية أو جبيرة ، وكذلك لأطراف أصابع القدم ومشاهدتها ، وإذا لاحظت حدوث انتفاخ ، تغير في لون الجلد ، أو البرودة أو التنميل ، هذا دليل على توقف تدفق الدم ، لذلك قمت على الفور بإزالة الضمادة أو الجبيرة.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    arabic == false ? 'How to bandage:' :'كيفية الضمادة',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19.sp,
                        color: AppColors.kColora),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '• Head - fingers and palm - arm and palm - thigh and knee - foot and ankle' : '•الرأس - الأصابع والنخيل - الذراع والنخيل - الفخذ والركبة - القدم والكاحل',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,

                        color: Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? '1- Bandage the head' :'1- ضمادة الرأس',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19.sp,
                        color: AppColors.kColora),
                  ),

                ],
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/head bandaging.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/head bandaging.jpg
              SizedBox(
                height: 2.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  Text(
                    arabic == false ? 'A triangular band used on the head.' :'رباط مثلث يستخدم على الرأس.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,
                        color:Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? 'A tape tie for the forehead, ears and eyes.' :'ربطة عنق للجبهة والأذنين والعينين.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(
                        fontSize: 13.sp,
                        color:Colors.black),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    arabic == false ? ' Attaching a tape to the cheek and ears.' :'ربط شريط على الخد والأذنين.',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(

                        fontSize: 13.sp,
                        color:Colors.black),
                  ),

                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                arabic == false ? '2- Bandage the fingers and the hand' :'2- ضمد الأصابع واليد',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 3.h,
              ),
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(
                      "assets/images/Bandaging the fingers and the hand .jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  //assets/images/Bandaging the fingers and the hand .jpg
                  SizedBox(
                    height: 2.h,
                  ),
                  Column(
                    crossAxisAlignment: arabic == false
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    children: [
                      Text(
                        arabic == false ? 'A - From the superior region and end with the symptomatic regionConnect start from the sides' :'أ - من المنطقة العلوية وتنتهي بمنطقة الأعراض ، يبدأ الاتصال من الجانبين',
                        textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                        style:  TextStyle(

                            fontSize: 13.sp,
                            color:Colors.black),
                      ),

                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        arabic == false ? 'B - Make the lace wrap in the form of number 7 and 8 around the edges.' :'ب- اصنع غلاف الدانتيل على شكل رقم 7 و 8 حول الحواف.',
                        textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                        style:  TextStyle(

                            fontSize: 13.sp,
                            color:Colors.black),
                      ),

                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        arabic == false ? 'C- Be careful not to make the ligament too tight, blocking the blood flow, and you can ask the injured person if the ligament is severe, or you can notice the bluishness of the skin of the extremities.' :'ج- احرص على عدم تضييق الرباط بشدة مما يعيق تدفق الدم ، ويمكنك أن تسأل المصاب إذا كان الرباط شديدًا ، أو يمكنك ملاحظة ازرقاق جلد الأطراف.',
                        textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                        style:  TextStyle(

                            fontSize: 13.sp,
                            color:Colors.black),
                      ),

                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        arabic == false ? 'D- Do not forget to use the appropriate lace, width and lengthfor the place.' :'د- لا تنسى استخدام الدانتيل المناسب والعرض والطول للمكان.',
                        textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                        style:  TextStyle(

                            fontSize: 13.sp,
                            color:Colors.black),
                      ),

                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? '3- Bandage the fingers' :'3- ضمادة الأصابع',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? 'The First Way' :'الطريقة الأولي',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(

                    fontSize: 13.sp,
                    color:Colors.black),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/Bandaning the fingers 1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Column(
                crossAxisAlignment: arabic == false
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children:  [
                  Text(
                    arabic == false ? 'The Second Way' :'الطريقة الثانية',
                    textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                    style:  TextStyle(

                        fontSize: 13.sp,
                        color:Colors.black),
                  ),

                ],
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/Bandaning the fingers 2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                arabic == false ? '4- Bandage arm' :'4- ذراع ضمادة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              Image(
                image: const AssetImage('assets/images/Bandage arm.jpg'),
                height: 25.h,
                width: 95.w,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? '5- Attach the arm' :'5- اربط الذراع',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/Attach the arm.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/Attach the arm.jpg
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? '6- Knee Bandaging' :'6- تضميد الركبة',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/knee bandaging.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/knee bandaging.jpg
              SizedBox(
                height: 3.h,
              ),
              Text(
                arabic == false ? '7- Thigh Bandage' :'7- ضمادة الفخذ',
                textAlign: arabic == true ? TextAlign.right : TextAlign.left,
                style:  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19.sp,
                    color: AppColors.kColora),
              ),

              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.asset(
                    "assets/images/Thin bandage.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //assets/images/Thin bandage.jpg
            ],
          ),
        ),
      ),
    );
  }
}